//
//  Combine_URL_Fetch.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/16/23.
//

import Foundation


/// Uses combine to fetch simple data
class APIManager {
    
    static let shared = APIManager()
    private var cancellables = Set<AnyCancellable>()
    private var baseURL = "https://data.cityofnewyork.us/resource/s3k6-pzi2.json"
    
    @Published var data : [Schools] = []
    
    init() {
        getDataSimple()
    }
    
    // This is a simple function to get data using Combine
    func getDataSimple() {
        print("running Simple data grab")
        
        print("[simple] starting url parse on \(baseURL)")
        guard let url = URL(string: baseURL) else { return }
        URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .receive(on: DispatchQueue.main)
            .tryMap { (data, response) in
                guard
                    let response = response as? HTTPURLResponse,
                    response.statusCode >= 200 && response.statusCode < 300
                else {
                    throw URLError(.badServerResponse)
                }
                print("[simple] found data \(data.description)")
                return data
            }
            .decode(type: [Schools].self, decoder: JSONDecoder())
            .sink { (completion) in
                print("Simple API Completion \(completion)")
            } receiveValue: { [weak self] (data) in
                self?.data = data
                print(data.first)
            }
            .store(in: &cancellables)
    }
    
}
