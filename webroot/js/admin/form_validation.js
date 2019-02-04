$(document).ready(function () {

    $('#signUpForm').validate({  // initialize the plugin
        rules: {
            role_id: { 
                required: true,
            },
            firstname: {
                required: true,
                minlength: 3,
            },
            lastname: {
                required: true,
                minlength: 3
            },
            email: {
                required: true,
                email: true
            },
            password: {
                required: true,
                minlength: 6,
            },
            confirm_password: {
                required: true,
                equalTo : "#password"
            },
            agree_condition:{
                required: true,
            }
        },
        messages: {
          role_id: {
            required: "User role is must selected",
          },
          firstname: {
            required: "Firstname is must required",
            minlength: "Firstname must be at least 3 characters long",
          },
          lastname: {
            required: "Lastname is must required",
            minlength: "Lastname must be at least 3 characters long",
          },
          email: {
            required: "Email is must required",
            email : "Please enter a valid email address"
          },
          password: {
            required: "Password is must required",
            minlength: "Password must be at least 6 characters long",
          },
          confirm_password: {
            required: "Confirm Password is must required",
            equalTo: "Confirm password is must same to password",
          },
          agree_condition:{
               required: "Agree condition must be required",
          }      
        }
    });

    // Sign0in form validation
    $('#signInForm').validate({  // initialize the plugin
        rules: {
            email: {
                required: true,
                email: true
            },
            password: {
                required: true,
                minlength: 6,
            }
        },
        messages: {
          email: {
            required: "Email is must required",
            email : "Please enter a valid email address"
          },
          password: {
            required: "Password is must required",
            minlength: "Password must be at least 6 characters long",
          }    
        }
    });

    // reset password form validation
    $('#resetPasswordForm').validate({  // initialize the plugin
        rules: {
            email: {
                required: true,
                email: true,
                remote: base_url+"ajax/checkEmailExist"
            }
        },
        messages: {
          email: {
            required: "Email is must required",
            email : "Please enter a valid email address",
            remote: "This email not register with us. please try again."
          }  
        }
    });
    // set password form validation
    $('#setPasswordForm').validate({  // initialize the plugin
        rules: {
            password: {
                required: true,
                minlength: 6,
            },
            confirm_password: {
                required: true,
                equalTo : "#password"
            }
        },
        messages: {
            password: {
              required: "Password is must required",
              minlength: "Password must be at least 6 characters long",
            },
            confirm_password: {
              required: "Confirm Password is must required",
              equalTo: "Confirm password is must same to password",
            } 
        }
    });

    $('#EditUser').validate({   //initialize the plugin
        rules: {
            firstname: {
                required: true,
                minlength: 3,
            },
            lastname: {
                required: true,
                minlength: 3
            },
            email: {
                required: true,
                email: true
            },
            phone_number:{
                required: true,
                minlength: 10,
                maxlength: 10
            },
            role_id: { 
                required: true,
            },
            country_code:{
                required: true,
            },
            profile_picture_img:{
               required: true,
               //accept:"image/jpg,png,jpeg"
            },
             
        },
        messages: {
          
          firstname: {
            required: "Firstname is must required",
            minlength: "Firstname must be at least 3 characters long",
          },
          lastname: {
            required: "Lastname is must required",
            minlength: "Lastname must be at least 3 characters long",
          },
          email: {
            required: "Email is must required",
            email : "Please enter a valid email address"
          },
          phone_number:{
               required: "Phone number must be required",
               minlength: "Phone number should be 10 digit long",
               maxlength: "Phone number should be 10 digit long"
          },
          role_id: {
            required: "User role is must selected",
          },
          country_code:{
              required: "Country Code must be required",
          }, 
          profile_picture_img:{
               required: "Profile Picture must be required",
               accept:"Please Provide Jpg,Png or Jpeg image only",
          },
                 
        } 
    });

    $('#adminEditProfile').validate({  // initialize the plugin
        rules: {
            firstname: {
                required: true,
                minlength: 3,
            },
            lastname: {
                required: true,
                minlength: 3
            },
            email: {
                required: true,
                email: true
            },
            phone_number:{
                required: true,
                minlength: 10,
                maxlength: 10
            },
            address: {
                required: true,
            },
            state:{
                required: true,
            },
            country:{
                required: true,
            },
            country_code:{
                required: true,
            },
            profile_picture_img:{
               required: true,
               //accept:"image/jpg,png,jpeg"
            }  
        },
        messages: {
          firstname: {
            required: "Firstname is must required",
            minlength: "Firstname must be at least 3 characters long",
          },
          lastname: {
            required: "Lastname is must required",
            minlength: "Lastname must be at least 3 characters long",
          },
          email: {
            required: "Email is must required",
            email : "Please enter a valid email address"
          },
          phone_number:{
               required: "Phone number must be required",
               minlength: "Phone number should be 10 digit long",
               maxlength: "Phone number should be 10 digit long"
          },
          address: {
            required: "Address must be required",
          },
          state:{
               required: "State must be required",
          },
          country:{
               required: "Country must be required",
          },
          country_code: {
              required: "Country code must be required",
          },
          profile_picture_img:{
               required: "Profile Picture must be required",
               accept:"Please Provide Jpg,Png or Jpeg image only"
          }       
        }
    }); 
     // admin change password form validation
    $('#adminChangePassword').validate({  // initialize the plugin
        rules: {
            password: {
                required: true,
                minlength: 6,
            },
            confirm_password: {
                required: true,
                equalTo : "#password"
            }
        },
        messages: {
            password: {
              required: "Password is must required",
              minlength: "Password must be at least 6 characters long",
            },
            confirm_password: {
              required: "Confirm Password is must required",
              equalTo: "Confirm password is must same to password",
            } 
        }
    });

    $('#siteSettingForm').validate({  // initialize the plugin
        rules: {
            site_name: {
                required: true,
            },
            site_email: {
                required: true,
                email: true
            },
            site_favicon_img: {
                required: true,
                accept:"jpg,png,jpeg"
            },
            site_logo_img:{
                required: true,
                accept:"jpg,png,jpeg"
            },
            address: {
                required: true,
            },
            copyright:{
                required: true,
            }
            
        },
        messages: {
          site_name: {
            required: "Site name is must required",
          },
          site_email: {
            required: "Site email is must required",
            email : "Please enter a valid email address"
          },
          site_favicon_img:{
               required: "Site Favicon must be required",
               accept:"Please Provide Jpg,Png or Jpeg image only"
          },
          site_logo_img:{
               required: "Site Logo must be required",
               accept:"Please Provide Jpg,Png or Jpeg image only"
          },
          address: {
            required: "Address must be required",
          },
          copyright:{
               required: "Copyright must be required",
          }       
        }
    });

    // For add cron job
    $('#AddCronJob').validate({  // initialize the plugin
        rules: {
            name: {
                required: true,
            },
            url: {
                required: true,
                
            },
            description: {
                required: true,
                
            }
        },
        messages: {
          name: {
            required: "Cron jon name is must required",
          },
          url: {
            required: "Cron Job url must be required",
            
          },
          description:{
               required: "Description must be required",
          }   
        }
    });

    // For edit cron job
    $('#EditCronJob').validate({  // initialize the plugin
        rules: {
            name: {
                required: true,
            },
            url: {
                required: true,
                
            },
            description: {
                required: true,
                
            }
        },
        messages: {
          name: {
            required: "Cron jon name is must required",
          },
          url: {
            required: "Cron Job url must be required",
            
          },
          description:{
               required: "Description must be required",
          }   
        }
    });
     
});
