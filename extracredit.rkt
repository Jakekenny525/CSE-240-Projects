;Jake Kenny
;11/17/2020
;This program calculates tax liability, assuming annual income > $100,000

;Lowest bracket: 35,000 * 0.15 = 5250
;Middle bracket: (100,000 - 35,000) * 0.25 = 16250
;Since the user is guaranteed to have an income over $100,000, they will pay the full amount for both brackets
(define lowerBrackets 21500)

;Get the user's income
(display "Please enter your annual income:")
(newline)
(define income (read))

;Highest bracket: (income - 100,000) * 0.35
;Total tax is the sum of all three brackets
(define totalFederalTax
    (+(*(- income 100000)0.35)lowerBrackets))
  
;State income tax: (income - 50,000) * 0.05, as long as this number > 0
(define stateIncomeTax
    (*(- income 50000)0.05))

(define totalTax (+ totalFederalTax stateIncomeTax))
(display "Federal Tax: ")
(display totalFederalTax)
(newline)
(display "State Tax: ")
(display stateIncomeTax)
(newline)
(display "Total Tax Payments: ")
(display totalTax)
