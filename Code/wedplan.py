import mysql.connector

from tkinter import *
from PIL import Image, ImageTk

from tkinter import messagebox

con= mysql.connector.connect(user="root", password="Gaurav@1", host="localhost")
cur= con.cursor()
cur.execute("use wedplan;")

root= Tk()
root.geometry('400x400')
root.title('Welcome to your Wedding Planning')
root.iconbitmap('D:\wedplan project\Code\\wedicon.png')

min_budget= 1200000


############# WEDDING PLANNER ##################################################

def weddingplanner():
	flag=0
	wed= Toplevel()
	lbl= Label(wed, text="Please Enter the IDs of Finalized Vendors").grid(row=0)
	clt= Label(wed, text="Client ID: ").grid(row=1, column=0)
	clientt= Entry(wed)
	clientt.grid(row=1, column=1)
	def search():
		cur.execute("select count(*) from clients where Client_ID=%d ;"%int(clientt.get())) ###yaha mujhe count wali condition lagani padi agr 1 hoga tabhi exist krega
		count= cur.fetchall()
		if(count[0][0]==1):
			global flag
			flag=1
			cur.execute("select client_name, email from clients where Client_ID=%d ;"%int(clientt.get()))
			details= cur.fetchall()
			disp= Label(wed, text="Client:, %s,  Email: %s"%(details[0][0], details[0][1])).grid(row=3, columnspan=2)


	client_sub= Button(wed, text="Search Client", command=search).grid(row=2)
	vend1= Label(wed, text="Venue Vendor ID: ").grid(row=4, column=0)
	vend2= Label(wed, text="Photo Vendor ID: ").grid(row=5, column=0)
	vend3= Label(wed, text="Jewellery Vendor ID: ").grid(row=6, column=0)
	vend4= Label(wed, text="Decor ID: ").grid(row=7, column=0)
	vend5= Label(wed, text="B&G Wear Vendor ID: ").grid(row=8, column=0)
	vend6= Label(wed, text="Catering Vendor ID: ").grid(row=9, column=0)

	venue= Entry(wed)
	venue.grid(row=4, column=1)
	photo= Entry(wed)
	photo.grid(row=5, column=1)
	jewel= Entry(wed)
	jewel.grid(row=6, column=1)
	decor= Entry(wed)
	decor.grid(row=7, column=1)
	wear= Entry(wed)
	wear.grid(row=8, column=1)
	cat= Entry(wed)
	cat.grid(row=9, column=1)

	def final_submit():
		global flag
		print(flag)
		if(flag==1):
			cur.execute("insert into finalizedvendors select * from topvendors where Client_ID=%s and vendor_id in (%s, %s, %s, %s, %s, %s);"%( clientt.get()\
				,venue.get(), photo.get(), jewel.get(), decor.get(), wear.get(), cat.get()  ))
			con.commit()
			messagebox.showinfo("Successfully Submitted !!", "Congratulations !! Final Vendors are successfully added.")
			cur.close()
			con.close()
			root.destroy()

	finsubmit= Button(wed, text="Final Submit", command=final_submit).grid(row=10)

	
############## WEDDING PLANNER ENDS ###########################################

############# CLIENT ############################################################################
a1= Entry()
b1= Entry()
c1= Entry()
d1= Entry()
e1= Entry()

def client():
	global a1
	global b1
	global c1
	global d1
	global e1

	top2= Toplevel()
	a = Label(top2 ,text = "Name").grid(row = 0,column = 0)
	b = Label(top2 ,text = "Budget").grid(row = 1,column = 0)
	c = Label(top2 ,text = "Date").grid(row = 2,column = 0)
	d = Label(top2 ,text = "Contact Number").grid(row = 3,column = 0)
	d = Label(top2 ,text = "E-Mail").grid(row = 4,column = 0)
	a1 = Entry(top2)
	a1.grid(row = 0,column = 1)
	b1 = Entry(top2)
	b1.grid(row = 1,column = 1)
	c1 = Entry(top2)
	c1.grid(row = 2,column = 1)
	d1 = Entry(top2)
	d1.grid(row = 3,column = 1)
	e1 = Entry(top2)
	e1.grid(row = 4,column = 1)

	btn= Button(top2, text="Submit", command=open).grid(row = 5,column = 1)




def open():
	global my_img
	global a1
	global b1
	global c1
	global d1
	global e1

	name= a1.get()
	budget= b1.get()
	date= c1.get()
	mobile= d1.get()
	email= e1.get()

	top=Toplevel()
	

	print(budget)
	budget= int(budget)

	if (budget<min_budget) :
		label1= Label(top, text="Sorry!! We are not available.").pack()
	else:
		cur.execute("select count(*) from booking where Booking_Date='%s';"%(date))
		count= cur.fetchall()
		print(count)
		if(count[0][0]>0):
			label1= Label(top, text="Sorry!! We are not available.").pack()
		else:
			####Entering customer details in database ##################################
			cur.execute("insert into clients (Client_Name, Budget, Wed_date, Contact_Number, Email) values('%s', %d, '%s', '%s', '%s');"%(name,int(budget),date,mobile,email))
			con.commit()
			cur.execute("select Client_ID from clients order by Client_ID desc limit 1;")
			clientid= cur.fetchall()
			print(clientid)
			cur.execute("insert into booking values(%d, '%s');"%(int(clientid[0][0]), date ))
			###deciding budgets percentage ################################################################
			# Categories- Venue, Photo, Jewellery, Decor, Bridal&Groom Wear, Catering, Others
			cat_lbl= Label(top, text="Category").grid(row=0, column=0)
			venue_lbl= Label(top, text="Venue").grid(row=1, column=0)
			photo_lbl= Label(top, text="Photo").grid(row=2, column=0)
			jewel_lbl= Label(top, text="Jewellery").grid(row=3, column=0)
			decor_lbl= Label(top, text="Decor").grid(row=4, column=0)
			wear_lbl= Label(top, text="Bridal & Groom Wear").grid(row=5, column=0)
			catering_lbl= Label(top, text="Catering").grid(row=6, column=0)
			others_lbl= Label(top, text="Others").grid(row=7, column=0)

			Total_lbl= Label(top, text="% Share").grid(row=0, column=1)
			venue_entry= Entry(top)
			venue_entry.grid(row=1, column=1)
			venue_entry.insert(0, "15")

			photo_entry= Entry(top)
			photo_entry.grid(row=2, column=1)
			photo_entry.insert(0, "6")

			jewel_entry= Entry(top)
			jewel_entry.grid(row=3, column=1)
			jewel_entry.insert(0, "19")

			decor_entry= Entry(top)
			decor_entry.grid(row=4, column=1)
			decor_entry.insert(0, "7")

			wear_entry= Entry(top)
			wear_entry.grid(row=5, column=1)
			wear_entry.insert(0, "10")

			catering_entry= Entry(top)
			catering_entry.grid(row=6, column=1)
			catering_entry.insert(0, "25")

			others_entry= Entry(top)
			others_entry.grid(row=7, column=1)
			others_entry.insert(0, "18")

			def submit_percent():
				venue_percent= int(venue_entry.get())
				photo_percent= int(photo_entry.get())
				jewel_percent= int(jewel_entry.get())
				decor_percent= int(decor_entry.get())
				wear_percent= int(wear_entry.get())
				cat_percent= int(catering_entry.get())
				others_percent= int(others_entry.get())

				total= venue_percent+photo_percent+jewel_percent+decor_percent+wear_percent+cat_percent+others_percent

				if(total!=100):
					error_lbl= Label(top, text="The % total is not 100. Please make it 100").grid(row=9, column=0)
				else:
					venue_budget= (venue_percent/100)*budget
					photo_budget= (photo_percent/100)*budget
					jewel_budget= (jewel_percent/100)*budget
					decor_budget= (decor_percent/100)*budget
					wear_budget= (wear_percent/100)*budget
					cat_budget= (cat_percent/100)*budget
					others_budget= (others_percent/100)*budget

					
					cur.execute("insert into topvendors select %s, category, vendor_name, fee, Vendor_ID from vendors where fee<=%s and category='Venue'\
					and vendor_id not in (select vendor_id from vendor_booking where booking_date='%s') order by fee desc limit 5;"%(clientid[0][0],venue_budget, date))
					cur.execute("insert into topvendors select %s, category, vendor_name, fee, Vendor_ID from vendors where fee<=%s and category='Photo'\
					and vendor_id not in (select vendor_id from vendor_booking where booking_date='%s') order by fee desc limit 5;"%(clientid[0][0],photo_budget, date))
					cur.execute("insert into topvendors select %s, category, vendor_name, fee, Vendor_ID from vendors where fee<=%s and category='Jewel'\
					and vendor_id not in (select vendor_id from vendor_booking where booking_date='%s') order by fee desc limit 5;"%(clientid[0][0],jewel_budget, date))
					cur.execute("insert into topvendors select %s, category, vendor_name, fee, Vendor_ID from vendors where fee<=%s and category='Decor'\
					and vendor_id not in (select vendor_id from vendor_booking where booking_date='%s') order by fee desc limit 5;"%(clientid[0][0],decor_budget, date))
					cur.execute("insert into topvendors select %s, category, vendor_name, fee, Vendor_ID from vendors where fee<=%s and category='Wear'\
					and vendor_id not in (select vendor_id from vendor_booking where booking_date='%s') order by fee desc limit 5;"%(clientid[0][0],wear_budget, date))
					cur.execute("insert into topvendors select %s, category, vendor_name, fee, Vendor_ID from vendors where fee<=%s and category='Catering'\
					and vendor_id not in (select vendor_id from vendor_booking where booking_date='%s') order by fee desc limit 5;"%(clientid[0][0],cat_budget, date))
		


					cur.execute("select * from topvendors where client_id=%s;"%clientid[0][0])
					myresult = cur.fetchall()
		
					for x in myresult:
  						print(x)

					con.commit()
					cur.close()
					con.close()

					messagebox.showinfo("Successfully Submitted !!", "Congratulations !! Your booking is successfully added.")
					root.destroy()
				


			submit_btn= Button(top, text="Submit", command= submit_percent)
			submit_btn.grid(row=8, column=0)



	

####################### CLIENT ENDS ########################################################################


###################### VENDOR #########################################################

def vendor():
	vend= Toplevel()
	instr_lbl= Label(vend, text="PLEASE ENTER THE DATE IN FORMAT- DD/MM/YYYY").pack()
	id_lbl= Label(vend, text="Please Enter your Vendor_ID").pack()
	id_entry= Entry(vend)
	id_entry.pack()
	booking_lbl= Label(vend, text="Mark a date booked:").pack()
	date_entry= Entry(vend)
	date_entry.pack()
	
	def vendor_book():
		vendorid= int(id_entry.get())
		vendor_date= date_entry.get()
		cur.execute("insert into vendor_booking values(%d, '%s');"%(vendorid, vendor_date))
		con.commit()
		messagebox.showinfo("Successfully Submitted !!", "Congratulations !! Your booking is successfully added.")

	vndr_sbmit= Button(vend, text="Submit", command= vendor_book).pack()
	


###################### VENDOR ENDS #################################################

########## ROLE SELECTION #####################################################################

welcm_labl= Label(root, text="Welcome to Role Selection Page. Please select your role.").pack()

clicked= StringVar()
drop= OptionMenu(root, clicked, "Wedding Planner", "Vendor", "Client")
drop.pack()

clicked.set("Client")

def slct():
	if clicked.get()=="Wedding Planner":
		weddingplanner()
	elif clicked.get()=="Vendor":
		vendor()
	elif clicked.get()=="Client":
		client()

slctrbutton= Button(root, text='OK', command=slct).pack()



############# ROLE SELECTION ENDS ##################################################




mainloop()

cur.close()
con.close()

############################## CODE ENDSS ######################################################




