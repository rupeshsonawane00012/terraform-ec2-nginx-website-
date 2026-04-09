# Terraform EC2 Nginx Website 🚀

##  About This Project

In this project, I created a simple website using AWS and Terraform.

Instead of manually creating resources in AWS, I used Terraform to automate everything.
The goal was to understand how Infrastructure as Code (IaC) works in real life.

---

##  Tools I Used

* Terraform
* AWS EC2
* Nginx
* Linux (Ubuntu)

---

##  What I Did (Step-by-Step)

1. Installed Terraform on my system
2. Created Terraform files (`main.tf`, `variables.tf`, `outputs.tf`)
3. Wrote code to create an EC2 instance
4. Used `user_data` to install Nginx automatically
5. Ran Terraform commands:

   * `terraform init`
   * `terraform plan`
   * `terraform apply`
6. Got the public IP of EC2
7. Opened the IP in browser → saw Nginx running
8. Connected to EC2 and replaced default page with my own HTML

## ⚙️ Terraform Installation (Linux - Ubuntu)

To install Terraform, I followed these steps:

```bash
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
```

```bash
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
```

```bash
sudo apt update && sudo apt install terraform
```

---

## 🔄 Terraform Resource Symbols (Understanding Plan Output)

While running `terraform plan`, I learned these symbols:

* `+` → Resource will be **created**
* `-` → Resource will be **deleted**
* `~` → Resource will be **modified/changed**

---

## 🚀 Terraform Commands I Used

Here are the main Terraform commands I used in this project:

```bash
terraform init
```

👉 Initializes Terraform in the current directory (downloads providers)

```bash
terraform plan
```

👉 Shows what resources will be created (like a blueprint)

```bash
terraform validate
```

👉 Checks if the Terraform code is correct

```bash
terraform fmt
```

👉 Formats the Terraform files properly

```bash
terraform apply
```

👉 Creates the infrastructure (asks for approval)

```bash
terraform apply -auto-approve
```

👉 Creates infrastructure without asking for approval

```bash
terraform destroy -auto-approve
```

👉 Deletes all created resources automatically

---

## 💡 Simple Understanding

* `init` → Setup
* `plan` → Preview
* `apply` → Create
* `destroy` → Delete

---


---

##  Result

* EC2 instance was created successfully
* Nginx was installed automatically
* My custom HTML website was visible in browser

---

##  Problems I Faced

### 1. Terraform Errors

At the beginning, I got errors like:

* missing brackets
* provider not initialized

 I fixed this by correcting syntax and running `terraform init`

---

### 2. Instance Creation Failed

I got an error related to instance type not being free tier.

  I changed instance type to `t3.micro`

---

### 3. Website Not Showing

Even after deployment, only default Nginx page was visible.

  I learned that `user_data` did not update the HTML properly
  Then I manually edited:

```
/var/www/html/index.html
```

---

### 4. SSH Not Working

I got:

```
Permission denied (publickey)
```

  Problem was `.pem` file not available
  I used EC2 Instance Connect instead

---

### 5. File Not Saving (Vim Issue)

I got errors like:

* readonly file
* can't open file for writing

  I learned about Linux permissions
    Fixed it using:

```
sudo vim index.html
```

---

##   What I Learned

* How Terraform works in real projects
* How to create AWS EC2 using code
* How to automate server setup using `user_data`
* Basics of Linux commands and permissions
* How Nginx serves a website
* How to debug real DevOps issues

---

##  Cleanup

After completing the lab, I deleted resources using:

```
terraform destroy
```

This helped me avoid unnecessary AWS charges.

---

##  Final Thoughts

This project helped me understand how DevOps works in real scenarios.
I faced multiple errors, but solving them gave me confidence in working with Terraform and AWS.

---
