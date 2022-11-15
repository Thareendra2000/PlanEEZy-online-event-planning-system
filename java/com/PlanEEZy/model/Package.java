//T.M.T.C.Tennakoon
//IT21171338

//Package class
package com.PlanEEZy.model;

public class Package {
		// data members
		private int packageID;
		private float amountPerHead;
		private String food;
		private String beverages;
		private String decorations;
		private String music;
		private String description;
		private int Incharge;
		
		//overloaded constructor
		public Package(int packageID, float amountPerHead, String food, String beverages, String decorations,
				String music, String description, int incharge) {
			super();
			this.packageID = packageID;
			this.amountPerHead = amountPerHead;
			this.food = food;
			this.beverages = beverages;
			this.decorations = decorations;
			this.music = music;
			this.description = description;
			Incharge = incharge;
		}
		
		//constructor without package ID
		public Package(float amountPerHead, String food, String beverages, String decorations, String music,
				String description, int incharge) {
			super();
			this.amountPerHead = amountPerHead;
			this.food = food;
			this.beverages = beverages;
			this.decorations = decorations;
			this.music = music;
			this.description = description;
			Incharge = incharge;
		}

		//getters and setters
		//getters
		public int getPackageID() {
			return packageID;
		}
		
		public float getAmountPerHead() {
			return amountPerHead;
		}
		
		public String getFood() {
			return food;
		}
		
		public String getBeverages() {
			return beverages;
		}
		
		public String getDecorations() {
			return decorations;
		}
		
		public String getMusic() {
			return music;
		}
		
		public String getDescription() {
			return description;
		}
		
		public int getIncharge() {
			return Incharge;
		}
		
		//setters
		public void setPackageID(int packageID) {
			this.packageID = packageID;
		}

		public void setAmountPerHead(float amountPerHead) {
			this.amountPerHead = amountPerHead;
		}

		public void setFood(String food) {
			this.food = food;
		}

		public void setBeverages(String beverages) {
			this.beverages = beverages;
		}

		public void setDecorations(String decorations) {
			this.decorations = decorations;
		}

		public void setMusic(String music) {
			this.music = music;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public void setIncharge(int incharge) {
			Incharge = incharge;
		}
		//create only one object from package class using singleton pattern
		private static Package pobj;
		
		public static Package getInstance(float amountPerHead, String food, String beverages, String decorations, String music,
				String description, int incharge) {

		      // create object if it's not already created
		      if(pobj == null) {
		         pobj = new Package(amountPerHead, food, beverages, decorations, music,
		 				description, incharge);
		      }

		       // returns the singleton object
		       return pobj;
		   }
}
