# Trust in government institutions has been rising, particularly among young people.

Sreekanth Reddy Sajjala

Data science | Spring 2019

#### Confidence in the Federal government by age and year surveyed

Looking at the news on TV and going through social media, one gets the feeling that fewer and fewer people have high levels of confidence in the branches of government. In this article I shall examine how the trust levels in the various branches of the government and the press have changed over the years among various age groups. The GSS dataset has collected this data right from 1972. In the second part of the article we shall be looking at possible relationships and factors which may explain the changes in trust levels. We have examined age and year instead of any other combination of age,cohort and year because there are very large effects caused by age and year. 

**Confidence in the executive branch of the government**

In this first figure we shall see the trends in how the confidence in the executive branch of the federal government has changed over the years in people of different ages. This will allow us to see any difference between people of different ages.

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/age_exe.png)

The data was recorded the following way, a 1 indicated no confidence in the executive branch, a 2 indicates reasonable amounts of confidence and a 3 indicates a very high level of confidence. 

What we see in the graph is that until the mid 2000s, all age groups' confidence in the executive branch was almost the same. The divergence might have started off as computer use(Graphed below) and internet penetration allowed more forms of media and opinions. It could also be due to increased polarization. This could have led to people forming their opinions differently on the basis of what they are most exposed to. Other observations include the dips in confidences at various points which can be attributed to the watergate scandal and the 9/11 attacks. Confidence in the federal government is almost at its highest ever levels now. 

**Confidence in the Judicial branch of the government**

Now lets look at confidence levels in the Judicial branch of the government. This would be interesting to explore as we can observe how it changes along with the confidence in the executive branch of the government. Again this is plotted in the same way, looking at confidence levels at various ages across years.

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/age_jud.png)


We can see that the spread in the confidence on the judicial branch is smaller compared to the executive branch. We also see greater divergence between age groups which might be due to the face the young people might have lesser experience with the judiciary. Once again the confidence in the branch is around its all time peak. 


**Confidence in the legislative branch**

We shall round off this visualization of the confidence in the government with the legislative branch.

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/age_legis.png)


This graph to me is very intriguing because from what I have heard as a foreign citizen, I was under the belief that people were losing their confidence in the house and senate's ability to take action and stay non-corrupt from the influence of lobbying. This graph proves otherwise with confidence hitting an all time peak among all ages. We once again see the trend of divergence beginning only recently. The size of the variation indicated by the error bars has also grown.


Now we shall explore factors like the confidence in the army, confidence in the press and how people's incomes have changed. This is to explore if these factors explain the previous trends we have explored. 

We shall first briefly visualize these factors in the same way as we did previously, then visualize relationships and then try to perform regression analysis. 

**Confidence in the press**

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/age_press.png)


The confidence in the press has risen steadily till the 1992 and it grew really fast till 1995. It has since grown slower since. The trust in the press by younger people has risen sharply since around 2011, indicating the impact of the internet. As we go on to the later analysis, we can see that it is a very large factor in the high confidence in the government among young people.

**Confidence in the army**

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/age_army.png)

Confidence in the army is the first thing where we have seen a constantly decreasing trend. It could be attributed to the fact growing military spending has been frowned upon and the spread of that information through the internet could be the cause. This is also confusing as it could be seen either as confidence in the military's ability to protect the nation or confidence in how well they are run. As there is this ambiguity, we shall not be using this in the regression analysis.

**Confidence in the government across time by party affiliation**

Another factor I felt would be key for us to examine in order to understand the factors between the confidence levels in the government is how the confidence varied by party affiliation. 

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/party_exe.png)

Visualizing  the confidence in the federal government by  party identity shows what we would expect, each party trusts the government more when they are in power. the Democrats seem to vary in a higher range and hit a peak in 2016 following 8 years in power.


**Income for various ages across time**

Income levels are a large influence behind the confidence in the government. Plotting this shall allow us to explain why certain age demographics' confidence in the government might have changed.

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/inc_exe.png)


Plotting the real income at different ages over the years could help us figure out why the confidence levels in the government change. Incomes for young people and the old people have changed a lot. This could help explain why young people's trust in the the government is the highest, because lower income people tend to trust the government more as shown in a visualization below.


#### Relationships to help make models for predictions

Lets look how the dependent variables relate with the explanatory variables in order to build regression models for predicting the trust in the government. We shall use the executive branch for this analysis as repeating the same analysis for all 3 branches would be very mechanical and a relationship exists between all 3 branches.

**Relationship between confidence levels in the army and executive branch**



![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/arm_exe.png)

Here we see a very positive relation wherein people who rate their confidence in the army higher on the (1-3) scale tend to have higher levels of trust in the government.


**Relationship between confidence levels in the press and executive branch**


![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/press_exe.png)


We see a similarly strong relationship between the confidence in the press and the confidence in the government which makes sense considering people would think a more free press indicates a less oppressive regime.


**Relationship between levels in the income and confidence in the executive branch**

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/inc_exe1.png)

Interesting observation that increasing confidence in the federal government is related to lower incomes.

Looking at these relationships the increased trust in the government, particularly among young people can be attributed to 3 major factors.

1.Falling real income for their age group:- If we look at the inflation adjusted income across years for various age demographics, young people are the only demographic which saw its income go down in the last couple of decades. Looking at the relationship between income and confidence in the government, we can see that lower incomes correspond with higher confidence in the government.


2.Highest ever confidence in the government among democrats:- 8 years of a democratic president until 2016, lead to the peak of democrats' confidence in the government. Since young people are mainly democrats, this also explains their high level of confidence in the government.

3.Increasing confidence in the press:- The confidence among the press among young people has grown sharply from 2010 onwards, this can be prescribed to much more channels of media due to the penetration of media. High confidence in the press has a very heavy correspondence with a higher confidence in the government.


Now I am going to build a regression model to predict confidence in the government.

On the basis of the relationships and graphs we have seen above the following factors seem logical to use,
* Age:- We can see a large age effect in the graph where we have grouped by cohort. We are also including the quadratic term for age as there is also a non-linear relationship.

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/exe_cohort.png)

* Income:- This is a variable where we have seen almost age groups react the same too, lower incomes lead to higher levels of confidence in the the government.

* Confidence in the press:- Looking at the relationships, this looks to be the strongest factor. A higher confidence in the press directly leads to a higher confidence in the government.

* Partyid:- This is a variable with a big influence, with confidence changing dramatically on the basis of which party was in power.

This is the model I made.

`model = smf.ols('confed ~ age + age2 + realinc + conpress +partyid', data=gss)`

The results of the regression

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/regression.png)


We see on the basis of coefficients of regression and range of values, the variables CONPRESS, PARTYID, REALINC have the biggest effects and the others following them.


Here is a sample result where we plotted the confidence in the federal government varying with inflation adjusted income with all the variables set to their unweighted mean. 



![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/reg_inc.png)

The regression model shows the same trends we have hypothesized with the confidence in the federal government falling with real income. Swapping out the explanatory variable allows to visualize the other effects.

Now that I have a model which fits the relationships we have observed, lets try to expand it. 

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/educ_fed.png)


Looking at the scatter plot between education level and the confidence levels in the federal government, we see a non linear relationship where the confidence rises until a certain point and then falls.


![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/education.png)


Replotting our model with the education level on the x axis, we see the behaviour observed in the visualizations very much present in the model.


Now lets try to change the variables in the model to check if our model confirms what we have seen in the previous visualizations. We shall plot the confidence in the federal government along with education levels for a young self-identified democrat and an older self-identified republican with varying levels of trust in the press.

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/old_young.png1.png)



With confidence in the press set to high, party set to democrats and age 23, we see that the confidence in the government at all income levels is over 20% higher compared to what is predicted for a republican aged 70 and with a low confidence in the press. Their incomes were set to the average for their demographic.


One last thing I wanted to explore was the effect of the gender of the respondent on this model. Below are the models plotted against income with the first being for men and the second being women.

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/sex.png)

We see a non-trivial difference in confidence, with women having higher levels than men. This might be due to the fact that women are more likely to be democrats. We also see that both of them follow the same trend when it comes to income.
