/*
 * generated by Xtext
 */
package com.opcoach.training.rental.xtext;

import com.google.inject.Binder;

/**
 * Use this class to register components to be used at runtime / without the Equinox extension registry.
 */
public class RentalDslRuntimeModule extends com.opcoach.training.rental.xtext.AbstractRentalDslRuntimeModule {

	
	@Override
	public void configure(Binder binder)
	{
		super.configure(binder);
		 System.out.println("On configure le RentalDslRuntimeModule ....");

		
	}
	
	
	
	
}
