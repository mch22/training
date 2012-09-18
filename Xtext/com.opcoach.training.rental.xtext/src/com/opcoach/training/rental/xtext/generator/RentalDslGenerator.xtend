/*
 * generated by Xtext
 */
package com.opcoach.training.rental.xtext.generator

import com.opcoach.training.rental.Customer
import com.opcoach.training.rental.RentalAgency
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IFileSystemAccess
import org.eclipse.xtext.generator.IGenerator
import java.util.Collection

class RentalDslGenerator implements IGenerator {
	
	override void doGenerate(Resource resource, IFileSystemAccess fsa)
	{
		// Get the edited root object
		var  agency = resource.contents.head as RentalAgency
		// Get a collection of model object in the root object
		var customers = resource.allContents.toList().filter(typeof(Customer))
		var filteredCustomers = customers.filter([it.firstName.length()>4]).toList()
		
		// generate the file
		fsa.generateFile(agency.name + ".txtagency", getText(agency, filteredCustomers))
		
		// Call a second generator
		var gen2 = new RentalDslCustomersGenerator
		gen2.doGenerate(resource, fsa)
	}
	
	def getText(RentalAgency a, Collection<Customer> cl) '''
	Agency name is �a.name� and contains �cl.size� Filtered Customers'''
}