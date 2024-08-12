//
//  ListViewModel.swift
//  AppTableViewAvancado
//
//  Created by MacBook on 07/08/24.
//

import Foundation

public class ListViewModel {
    
    private var listEmployee: [Employee] = [Employee(
      name: "Caio Fabrini",
      age: 22,
      job: "empresario",
      salary: 10000,
      isSelectedHeart: false
    ), Employee(
      name: "Bárbara Fabrini",
      age: 22,
      job: "empresario",
      salary: 10000,
      isSelectedHeart: true
    ), Employee(
      name: "Jose Assis",
      age: 22,
      job: "empresario",
      salary: 10000,
      isSelectedHeart: true
    ), Employee(
      name: "Fabio Lopes",
      age: 22,
      job: "empresario",
      salary: 10000,
      isSelectedHeart: false
    ),Employee(
      name: "Eduardo Abido",
      age: 22,
      job: "empresario",
      salary: 10000,
      isSelectedHeart: true),
                            Employee(name: "Alice Johnson", age: 30, job: "Software Engineer", salary: 120000, isSelectedHeart: false),
                            Employee(name: "Bob Smith", age: 45, job: "Project Manager", salary: 95000, isSelectedHeart: true),
                            Employee(name: "Carol White", age: 28, job: "Data Scientist", salary: 110000, isSelectedHeart: false),
                            Employee(name: "David Brown", age: 35, job: "Product Owner", salary: 105000, isSelectedHeart: true),
                            Employee(name: "Eve Davis", age: 40, job: "UX Designer", salary: 90000, isSelectedHeart: false),
                            Employee(name: "Frank Wilson", age: 50, job: "CTO", salary: 150000, isSelectedHeart: true),
                            Employee(name: "Grace Miller", age: 26, job: "Marketing Specialist", salary: 70000, isSelectedHeart: false),
                            Employee(name: "Hank Taylor", age: 38, job: "DevOps Engineer", salary: 115000, isSelectedHeart: true),
                            Employee(name: "Ivy Anderson", age: 32, job: "HR Manager", salary: 85000, isSelectedHeart: false),
                            Employee(name: "Jack Thomas", age: 29, job: "Sales Executive", salary: 80000, isSelectedHeart: true)
    ]
    
    func getListEmployee() -> [Employee]{
        return listEmployee
    }
    
    func loadCurrentEmployee(row: Int) -> Employee {
      return listEmployee[row]
    }
    
    var numberOfRowsInSection: Int{
        return listEmployee.count
    }
    
    func tappedUpdateHeartButton(employee: Employee) {
        if let index = getListEmployee().firstIndex(of: employee) {
            listEmployee[index].isSelectedHeart.toggle()
        }
    }
    
}


