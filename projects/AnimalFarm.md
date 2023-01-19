---
layout: project
type: project
image: img/projectPics/animal_farm_full.jpg
title: "Animal Farm"
date: 2022
published: true
labels:
- Object-oriented Programming
- C++
- Linked List Database Implementation
- Binary Search Tree
- CMake Build System
summary: "Animal Farm is a series of labs intended to teach the basics of C and C++. It's also intended to introduce good Software Engineering practices."
---
This project represents the final product of what was the bulk of a C & C++ course taken in my Junior year of the Computer Engineering program at University of Hawaii at Manoa.  It features several stages all focused on different ways in which to implement a database, to include arrays and singly-linked lists.  I learned a great deal about programming throughout this project, and it marks a period of growth for me as a developer.  Going into this class I already had a few years of C++ programming knowledge, but still learned an incredible amount more about the supporting ecosystems which make contemporary development possible; technologies such as cmake, version control, and the writing of unit tests.

One portion of the project that I found particularly fun to code was the weight class implementation; specifically the method convertWeight which returns the result of a weight conversion specified by the values of fromWeight, fromUnit, and toUnit, which are passed to the method as arguments.  I finally found a good use of a nested switch statement, and it was an amusing exercise in just how fun coding can be -- even in an academic setting.
```
t_weight Weight::convertWeight( const t_weight fromWeight, const Weight::UnitOfWeight fromUnit, const Weight::UnitOfWeight toUnit ) noexcept
{
	switch( fromUnit )
	{
		case POUNDS:
			switch( toUnit )
			{
				case POUNDS:
					return fromWeight;
				case SLUGS:
					return fromPoundsToSlugs( fromWeight );
				case KILOS:
					return fromPoundsToKilograms( fromWeight );
				default:
					assert( 0 );
			}

		case SLUGS:
			switch( toUnit )
			{
				case POUNDS:
					return fromSlugsToPounds( fromWeight );
				case SLUGS:
					return fromWeight;
				case KILOS:
					return fromPoundsToKilograms( fromSlugsToPounds( fromWeight ) );
				default:
					assert( 0 );
			}

		case KILOS:
			switch( toUnit )
			{
				case POUNDS:
					return fromKilogramsToPounds( fromWeight );
				case SLUGS:
					return fromPoundsToSlugs( fromKilogramsToPounds( fromWeight ) );
				case KILOS:
					return fromWeight;
				default:
					assert( 0 );
			}
		default:
			assert( 0 );
	}
}
```

As I collect more projects to share here I will be sure to update the page to include examples of my growing skillset, but this project is special to me, and I feel as though it earns a place within my portfolio for that reason.

[Link to Github Project Page](https://github.com/CalebMueller-UH/ee205-Animal-Farm)
