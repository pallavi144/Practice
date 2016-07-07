<%@ Page Title="" Language="C#" MasterPageFile="~/cwc.master" AutoEventWireup="true" CodeFile="GenneralInformation.aspx.cs" Inherits="GenneralInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style65 {
        }
        .auto-style66 {
            width: 265px;
        }
        .auto-style70 {
            width: 22px;
            height: 28px;
        }
        .auto-style71 {
            height: 28px;
        }
        .auto-style72 {
            width: 329px;
        }
        .auto-style73 {
            width: 28px;
        }
        .auto-style74 {
            width: 329px;
            height: 23px;
        }
        .auto-style75 {
            width: 265px;
            height: 23px;
        }
        .auto-style76 {
            width: 28px;
            height: 23px;
        }
        td{
            font-family:Calibri;
            color:navy;
        }
        p{
            font-family:Calibri;
            color:navy;
            font-size:17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <div style="height:540px;overflow-x:hidden;overflow-y:auto"> 
         <table class="auto-style2">
             <tr>
                 <td class="auto-style70"></td>
                 <td class="auto-style71" colspan="3">
                 </td>
             </tr>
             <tr>
                 <td class="auto-style38"></td>
                 <td class="auto-style65" colspan="3">
                     <asp:Label ID="Label12" runat="server" Font-Names="AR BERKLEY" Font-Size="XX-Large" Font-Underline="True" ForeColor="#660066" Text="Types Of Crimes"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <th class="auto-style65" colspan="3">&nbsp;</th>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <th class="auto-style65" colspan="3"><h2 style="color: #800000">Common Criminal Charges</h2></th>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Aiding &amp; Abetting </td>
                 <td class="auto-style66">&nbsp;</td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72"> Accessory Assault</td>
                 <td class="auto-style66">&nbsp;</td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72"> Drug Possession  </td>
                 <td class="auto-style66">&nbsp;</td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Theft / Larceny</td>
                 <td class="auto-style66">&nbsp;</td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Burglary</td>
                 <td class="auto-style66">&nbsp;</td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Theft</td>
                 <td class="auto-style66">&nbsp;</td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72"> Battery</td>
                 <td class="auto-style66">&nbsp;</td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <th class="auto-style65" colspan="3"><h2 style="color: #800000">All Other Charges</h2></th>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style37"></td>
                 <td class="auto-style74">Arson Aggravated Assault</td>
                 <td class="auto-style75">Domestic Violence</td>
                 <td class="auto-style76"></td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Attempt Bribery</td>
                 <td class="auto-style66">Drug Manufacturing and Cultivation Drug Trafficking</td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Child Abandonment</td>
                 <td class="auto-style66">Embezzlement </td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Child Abuse</td>
                 <td class="auto-style66">Extortion </td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Child Pornography</td>
                 <td class="auto-style66">Forgery </td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Computer Crime Conspiracy Credit</td>
                 <td class="auto-style66">Fraud</td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Debit Card Fraud</td>
                 <td class="auto-style66">&nbsp;Harassment </td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Theft Insurance</td>
                 <td class="auto-style66">&nbsp;Indecent Exposure </td>
                 <td class="auto-style73">&nbsp;</td>

             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Identity&nbsp; Fraud</td>
                 <td class="auto-style66">Involuntary Manslaughter: </td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Kidnapping Manslaughter: </td>
                 <td class="auto-style66">Voluntary Medical Marijuana </td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Murder: </td>
                 <td class="auto-style66">Prostitution</td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">&nbsp;Public Intoxication</td>
                 <td class="auto-style66">Robbery </td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style38">&nbsp;</td>
                 <td class="auto-style72">Securities Fraud </td>
                 <td class="auto-style66">Sexual Assault </td>
                 <td class="auto-style73">&nbsp;</td>
             </tr>
         </table>
        <h1> 
            <table class="auto-style2">
                <tr>
                    <td>&nbsp;</td>
                                    <td> <h3 style="color: #800000"> What Are the Different Types of Crimes?</h3>
                       
<p>Crimes are defined by criminal law, which refers to a body of federal and state rules that prohibit behavior the government deems harmful to society. If one engages in such behavior, they may be guilty of a crime and prosecuted in criminal court.</p>
<p>In today’s society, criminal behavior and criminal trials are highly publicized in the media and commonly the storyline in hit television shows and movies. As a result, people may consider themselves well-informed on the different types of crimes. However, the law can be quite complicated.</p>
<p>  There are many different types of crimes but, generally, crimes can be divided into four major categories, personal crimes, property crimes, inchoate crimes, and Statutory Crimes:
</p>
<p>
Personal Crimes – “Offenses against the Person”: These are crimes that result in physical or mental harm to another person. Personal crimes include:
        </p>
                                        <p>
                                            Assault </br>
        Battery</br>
        False Imprisonment</br>
        Kidnapping</br>
        Homicide – crimes such as first and second degree, murder, and involuntary manslaughter, and vehicular homicide
        Rape, statutory rape, sexual assault and other offenses of a sexual nature</br></p>
<p>
		Property Crimes – “Offenses against Property”: These are crimes that do not necessarily involve harm to another person. Instead, they involve an interference with another person’s right to use or enjoy their property. Property crimes include:
        Larceny (theft)</br>
        Robbery (theft by force) – Note: this is also considered a personal crime since it results in physical and mental harm.</br>
        Burglary (penalties for burglary)</br>
        Arson</br>
        Embezzlement</br>
        Forgery</br>
        False pretenses</br>
        Receipt of stolen goods.</p>
    <p>Inchoate Crimes – “Inchoate” translates into “incomplete”, meaning crimes that were begun, but not completed. This requires that a person take a substantial step to complete a crime, as opposed to just “intend” to commit a crime. Inchoate crimes include:
        Attempt – any crime that is attempted like “attempted robbery”
        Solicitation</br>
        Conspiracy</br></p>
    <p>Statutory Crimes – A violation of a specific state or federal statute and can involve either property offenses or personal offense. Statutory crimes include:
        Alcohol-related crimes such as drunk driving (DUI)</br>
        Selling alcohol to a minor.</br></p>
         <p style="font-style: normal; font-family: Calibri; font-size: 17px; color: #000080">The crimes listed above are basically prohibited in every state, but each state is different in how the law is written, how the behavior is regulated and the penalties that each crime potentially carries. Also, the list is far from complete because behavior may be prohibited in one state and not in others. For example, prostitution is legal is some parts of Nevada, but is a crime in every other state. Likewise, carrying a concealed firearm is only legal in certain states.
</br>What Are The Different Levels of Seriousness for Different Crimes?
 </br>
Crimes are often classified according to the level of seriousness, such as the distinction between felony and misdemeanor crimes. Generally, the differences are:
                                        <p style="font-style: normal; font-family: Calibri; font-size: 17px; color: #000080">
</br>
    Felony- More serious crimes such as murder, kidnapping and robbery
        Carries a year or more in state prison.</br>
        &nbsp;</br>
    Misdemeanor-Less serious crimes such as shoplifting or a DUI
        Usually carries a fine and jail sentence of less than a year, if at all.
            State laws may further divide the categories of crimes into subcategories. For example, Offenses against the Person may be divided into the categories of “Violent Crimes” and “Non-Violent Crimes”.<p style="font-style: normal; font-family: Calibri; font-size: 17px; color: #000080">&nbsp;Some states also place sexual crimes in their own category.  These categories are also developed for the purpose of sentencing.
</br>
Finally, crimes can also be divided according to criminal intent. The major intent categories are General Intent Crimes and Specific Intent Crimes. These labels refer to the state of mind that a defendant must have in order to be found guilty of a crime. This is a difficult concept to master, but can be very important to your defense if you are charged with a crime.
Should I Seek Legal Advice?
</br>
Crimes are not easily defined and there are many different types and variations, depending on the state or jurisdiction. If you are facing criminal charges, it is advisable that you contact a criminal defense lawyer immediately. They will analyze your case and provide you with the best defense possible.
</td>

                    <td>&nbsp;</td>
                </tr>
            </table>
          
   


    

   
    

   
    &nbsp;</div> 
</asp:Content>

