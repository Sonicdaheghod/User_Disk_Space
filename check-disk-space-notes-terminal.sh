# Video referenced: https://youtu.be/ahxhTIvnF3I

#Step 1
##read through free and used disk space in computer
### df

#Step 2
##make output readable to humans
### df -h

#Step 3
## get info from specifc row of interest
### df -h | grep drivers

#Step 4
## get the disk usage percentage info from specifc row of interest (driver)
### df -h | grep drivers | awk '{print $5}'

#Step 5
## removes the percentage sign from output for above code
### df -h | grep drivers | awk '{print $5}' | cut -d '%' -f1