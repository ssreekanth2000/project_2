# Trust in government institutions has been rising, particularly among young people.

Sreekanth Reddy Sajjala

Data science | Spring 2019

#### Confidence in the Federal government by age and year surveyed

Looking at the news on TV and going through social media, one gets the feeling that fewer and fewer people have high levels of confidence in the branches of government. In this article we shall examine how the trust levels in the various branches of the government and the press have changed over the years among various age groups. The GSS dataset has collected this data right from 1972. In the second part of the article we shall be looking at possible correlations and factors which may explain the changes in trust levels. We have examined age and year instead of any other combination of age,cohort and year because there are very significant effects caused by age and year. 

**Faith in the executive branch  of the government**

In this first figure we shall see the trends in how the confidence in the executive branch of the federal government has changed over the years in people of different ages. This will allow us to see any difference between people of different ages.

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/age_exe.png)

The data was recorded the following way, a 1 indicated no confidence in the executive branch, a 2 indicates reasonable amounts of confidence and a 3 indicates a very high level of confidence. 

What we see in the graph is that until the mid 2000s, all age groups' confidence in the executive branch was almost the same. The divergence might have started off as computer use(Graphed below) and internet penetration allowed more forms of media and opinions. It could also be due to increased polarization. This could have led to people forming their opinions differently on the basis of what they are most exposed to. Other observations include the dips in confidences at various points which can be attributed to the watergate scandal and the 9/11 attacks. Confidence in the federal government is almost at its highest ever levels now. 

**Confidence in the Judicial branch of the govenment**

Now lets look at confidence levels in the Judicial branch of the government. This would interesting to explore as we can observe how it changes along with the confidence in the executive branch of the government. Again this is plotted in the same way, looking at confidence levels at various ages across years.

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/age_jud.png)


We can see that the spread in the confidence on the judicial branch is smaller compared to the executive branch. We also see greater divergence between age groups which might be due to the face the young people might have lesser experience with the judiciary. Once again the confidence in the branch is around its all time peak. 


**Confidence in the legislative branch**

We shall round off this visulization of the confidence in the government with the legislative branch.

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/age_legis.png)


This graph to me is very interesting because from what I have heard as a foreign citizen, I was under the belief that people were losing their confidence in the house and senate's ability to take action and stay non-corrupt from the influence of lobbying. This graph proves otherwise with confidence hitting an all time peak among all ages. We once again see the trend of divergence beginning only recently. The size of the variation indicated by the error bars has also grown.


Now we shall explore factors like the confidence in the army, confidence in the press and how stable people belive they are financially. This is to explore if these factors explain the previous trends we have explored. 

We shall first breifly visualize these factors in the same way as we did previously, then visualize correlations and then try to perform regression analysis. 

**Confidence in the press**

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/age_press.png)


The confidence in the press has risen steadily till the 1992 and it grew really fast till 1995. It has since grown slower and the trust in the press by younger people has risen sharply since around 2011, indicating the impact of the internet. As we go on to the later analysis, we can see that it is a very large factor in the high confidence in the government among young people.

**Confidence in the army**

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/age_army.png)

Confidence in the army is the first thing where we have seen a constantly decreasing trend. It could be attributed to the fact growing military spending has been frowned upon and the spread of that information through the internet could be the cause. This is also confusing as it could be seen either as confidence in the military's ability to protect the nation or confidence in how well they are run. As there is this ambiguity, we shall not be using this in the regression analysis.

**Confidence in the government across time by party id**

Another factor I felt would be key for us to examine in order to understand the factors between the confidence levels in the government is how the confidence varied by party id. 

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/party_exe.png)

Visualizing  the confidence in the federal government by  party identity shows what we would expect, each party trusts the government more when they are in power. the Democrats seem to vary in a higher range.


**Income for various ages across time**

Income levels are a large influence behind the confidence in the government. Plotting this shall allow us to explain why certain age demographics' confidence in the government might have changed.

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/inc_exe.png)


Plotting the real income at different ages over the years could help us figure out why the confidence levels in the government change. Incomes for young people and the old people have changed a lot. This could help explain why young people's trust in the the government is the highest, because lower income people tend to trust the government more as shown in a correlation below.


#### Correlations to help make models for predictions

Lets look how the dependent variables correlate with the explanatory variables in order to build regression models for predicting the trust in the government. We shall use the executive branch for this analysis as repeating the same analysis for all 3 branches would be very mechanical and a correlation exists between all 3 branches.

**Correlation between confidence levels in the army and executive branch**



![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/arm_exe.png)

Here we see a very positive correlation wherein people who rate their confidence in the army higher on the (1-3) scale tend to have higher levels of trust in the government.


**Correlation between confidence levels in the press and executive branch**


![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/press_exe.png)


We see a similarly strong correlation between the confidence in the press and the confidence in the government which makes sense considering people would think a more free press indicates a less oppressive regime.


**Correlation between levels in the income and confidence in the executive branch**

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/inc_exe1.png)

Interesting observation that increasing confidence in the federal government is correlated with lower incomes
.
Looking at these correlations the increased trust in the government, particularly among young people can be attributed to 3 major factors.

1.Falling real income for their age group:- If we look at the inflation adjusted income across years for various age demographics, young people are the only demographic which saw its income go down in the last couple of decades. Looking at the correlation between income and confidence in the government, we can see that lower incomes correspond with higher confidence in the government.


2.Highest ever confidence in the government among democrats:- 8 years of a democratic president until 2016, lead to the peak of democrats' confidence in the government. Since young people are mainly democrats, this also explains their high level of confidence in the government.

3.Increasing confidence in the press:- The confidence among the press among young people has grown sharply from 2010 onwards, this can be prescribed to much more channels of media due to the penetration of media. High confidence in the press has a very heavy correlation with a higher confidence in the government.


Now I am going to build a regression model to predict confidence in the government.

On the basis of the correlations and graphs we have seen above the following factors seems logical,
* Age:- We can see a very significant age effect in the graph where we have grouped by cohort. We are also including the quadratic term for age as there is also a non-linear relationship.

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/exe_cohort.png)

* Income:- This is a variable where we have seen almost age groups react the same too, lower incomes lead to higher levels of confidence in the the government.

* Confidence in the press:- Looking at the correlations, this is the strongest. A higher confidence in the press directly leads to a higher confidence in the government.

* Partyid:- This was a very significant variable, with confidence changing dramatically on the basis of which party was in power.

That is the model I made.

`model = smf.ols('confed ~ age + age2 + realinc + conpress +partyid', data=gss)`

The results of the regression

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/regression.png)


We see on the basis of coefficients of regression and range of values, the variables CONPRESS, PARTYID, REALINC have the biggest effects and the others following them.


Here is a sample result where we plotted the confidence in the federal government varying with inflation adjusted income with all the variables set to their unweighted mean. 



![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/reg_inc.png)

The regression model shows the same trends we have hypothesized with the confidence in the federal government falling with real income. Swapping out the explanatory variable allows to visualize the other effects.

The reason for picking age and year as opposed to any other combination of the 3 of age, cohort and year is because of the reasons visible in the following graphs. 1. There is a very significant age effect. The year effect, even though its very noisy, is looks to be a lot more explanatory than the cohort variable.

If we change the values of the other variables from their average to something that we believe leads to a higher confidence in the government, this is what we see.

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/high.png)



With confidence in the press set to high, party set to democrats, confidence in the press high and age 23, we see that the confidence in the government at all income levels is over 10% higher.

One last thing I wanted to explore was the effect of the gender of the respondent on this model. Below are the models plotted against income with the first being for men and the second being women.

![alt text](https://github.com/ssreekanth2000/project_2/blob/master/photos/sex.png)

We see a pretty large differnce in confidence, with women having higher levels than men. We also see that both of them follow the same trend when it comes to income.

