!classDefinition: #XXXTest category: #Calendar!
TestCase subclass: #XXXTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Calendar'!

!XXXTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:10:52'!
atest08

	| holidayCalendar aDate  |
	
	holidayCalendar := HolidayCalendar new.
	aDate := December second, 1991.
	holidayCalendar makeDayOfWeekAsHoliday: Monday 
		from: January first, 1990
		to: December thirtyfirst, 1999.

	self assert: (holidayCalendar isHoliday: aDate).
	! !

!XXXTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 19:33:47'!
test01OneWeekdayCanBeHoliday

	| holidayCalendar aSunday |
	
	holidayCalendar := HolidayCalendar new.
	aSunday := October first, 2017.
	holidayCalendar makeDayOfWeekAsHoliday: Sunday.

	self assert: (holidayCalendar isHoliday: aSunday)! !

!XXXTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 19:34:51'!
test02NoWeekdayCanBeHoliday

	| holidayCalendar aMonday |
	
	holidayCalendar := HolidayCalendar new.
	aMonday := October second, 2017.

	self deny: (holidayCalendar isHoliday: aMonday)! !

!XXXTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 19:38:07'!
test04MoreThanOneWeekdayCanBeHoliday

	| holidayCalendar aSaturday aSunday |
	
	holidayCalendar := HolidayCalendar new.
	aSaturday := October seventh, 2017.
	aSunday := October first, 2017.
	holidayCalendar makeDayOfWeekAsHoliday: Saturday.
	holidayCalendar makeDayOfWeekAsHoliday: Sunday.

	self assert: (holidayCalendar isHoliday: aSaturday).	
	self assert: (holidayCalendar isHoliday: aSunday ).! !

!XXXTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 19:40:16'!
test05

	| holidayCalendar aNavidad  |
	
	holidayCalendar := HolidayCalendar new.
	aNavidad := December twentyfifth, 2017.
	holidayCalendar makeDayOfMonthAsHoliday: December twentyfifth.

	self assert: (holidayCalendar isHoliday: aNavidad)! !

!XXXTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 19:42:42'!
test06

	| holidayCalendar aNavidad aJanuaryFirst |
	
	holidayCalendar := HolidayCalendar new.
	aNavidad := December twentyfifth, 2017.
	aJanuaryFirst := January first, 2017.
	holidayCalendar makeDayOfMonthAsHoliday: December twentyfifth.
	holidayCalendar makeDayOfMonthAsHoliday: January first.

	self assert: (holidayCalendar isHoliday: aNavidad).
	self assert: (holidayCalendar isHoliday: aJanuaryFirst )! !

!XXXTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 19:49:43'!
test07

	| holidayCalendar aDate  |
	
	holidayCalendar := HolidayCalendar new.
	aDate := December first, 2017.
	holidayCalendar makeDateAsHoliday: aDate.

	self assert: (holidayCalendar isHoliday: aDate).
	! !

!XXXTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:16:17'!
test08

	| holidayCalendar aDate  |
	
	holidayCalendar := HolidayCalendar new.
	aDate := December second, 1991.
	holidayCalendar makeDayOfWeekAsHoliday: (DayOfWeekHolidayRule for: Monday) 
		from: January first, 1990
		to: December thirtyfirst, 1999.

	self assert: (holidayCalendar isHoliday: aDate).
	! !


!classDefinition: #CompoundHolidayRule category: #Calendar!
Object subclass: #CompoundHolidayRule
	instanceVariableNames: 'rule range'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Calendar'!

!CompoundHolidayRule methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:16:53'!
initializeFor: aRule into: aRange

	rule := aRule.
	range := aRange ! !

!CompoundHolidayRule methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:17:21'!
isHoliday: aDate

	^(range includes: aDate) and: [ rule isHoliday: aDate ]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CompoundHolidayRule class' category: #Calendar!
CompoundHolidayRule class
	instanceVariableNames: ''!

!CompoundHolidayRule class methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:16:33'!
for: aRule into: aRange 
	
	^self new initializeFor: aRule into: aRange 
	! !


!classDefinition: #DateHolidayRule category: #Calendar!
Object subclass: #DateHolidayRule
	instanceVariableNames: 'date'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Calendar'!

!DateHolidayRule methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:12:54'!
initializeFor: aFixedGregorianDate 
	
	date := aFixedGregorianDate ! !

!DateHolidayRule methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:13:09'!
isHoliday: aDate

	^aDate  = date! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DateHolidayRule class' category: #Calendar!
DateHolidayRule class
	instanceVariableNames: ''!

!DateHolidayRule class methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:12:45'!
for: aFixedGregorianDate 
	
	^self new initializeFor: aFixedGregorianDate ! !


!classDefinition: #DayOfMonthHolidayRule category: #Calendar!
Object subclass: #DayOfMonthHolidayRule
	instanceVariableNames: 'dayOfMonth'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Calendar'!

!DayOfMonthHolidayRule methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:11:54'!
initializeFor: aGregorianDayOfMonth 
	
	dayOfMonth := aGregorianDayOfMonth ! !

!DayOfMonthHolidayRule methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:12:15'!
isHoliday: aDate

	^aDate dayOfMonth = dayOfMonth ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DayOfMonthHolidayRule class' category: #Calendar!
DayOfMonthHolidayRule class
	instanceVariableNames: ''!

!DayOfMonthHolidayRule class methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:11:45'!
for: aGregorianDayOfMonth 
	
	^self new initializeFor: aGregorianDayOfMonth ! !


!classDefinition: #DayOfWeekHolidayRule category: #Calendar!
Object subclass: #DayOfWeekHolidayRule
	instanceVariableNames: 'weekday'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Calendar'!

!DayOfWeekHolidayRule methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:10:38'!
initializeFor: aGregorianDay 
	
	weekday := aGregorianDay ! !

!DayOfWeekHolidayRule methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:10:30'!
isHoliday: aDate

	^aDate day = weekday! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DayOfWeekHolidayRule class' category: #Calendar!
DayOfWeekHolidayRule class
	instanceVariableNames: ''!

!DayOfWeekHolidayRule class methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:09:58'!
for: aGregorianDay 
	
	^self new initializeFor: aGregorianDay ! !


!classDefinition: #HolidayCalendar category: #Calendar!
Object subclass: #HolidayCalendar
	instanceVariableNames: 'rules'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Calendar'!

!HolidayCalendar methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:14:18'!
initialize

	rules := OrderedCollection new.! !

!HolidayCalendar methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:13:26'!
isHoliday: aDate

	^rules anySatisfy: [ :aRule | aRule isHoliday: aDate ]! !

!HolidayCalendar methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:12:31'!
makeDateAsHoliday: aDate

	rules add: (DateHolidayRule for: aDate)! !

!HolidayCalendar methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:11:28'!
makeDayOfMonthAsHoliday: aDayOfMonth 
	
	rules add: (DayOfMonthHolidayRule for: aDayOfMonth)! !

!HolidayCalendar methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:09:04'!
makeDayOfWeekAsHoliday: aDayOfWeek

	rules add: (DayOfWeekHolidayRule for: aDayOfWeek)! !

!HolidayCalendar methodsFor: 'as yet unclassified' stamp: 'HAW 10/5/2017 20:15:26'!
makeDayOfWeekAsHoliday: aRule from: aFrom to: aTo

	rules add: (CompoundHolidayRule for: aRule into: (aFrom to: aTo))! !
