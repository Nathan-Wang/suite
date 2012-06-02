<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>Layer</Name>
    <UserStyle>
      <Title>Temperature Point</Title>
      <Abstract>A style for temperature observations</Abstract>
      <FeatureTypeStyle>
        <Rule>
          <Name>label</Name>
          <TextSymbolizer>
            <Label>
             <ogc:PropertyName>value</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-size">14</CssParameter>
            </Font> 
            <LabelPlacement>
              <PointPlacement>
                 <AnchorPoint>
                   <AnchorPointX>0</AnchorPointX>
                   <AnchorPointY>0</AnchorPointY>
                 </AnchorPoint>
                 <Displacement>
                   <DisplacementX>10</DisplacementX>
                   <DisplacementY>0</DisplacementY>
                 </Displacement>
               </PointPlacement>
            </LabelPlacement>
          <Halo>
              <Radius>2</Radius>
              <Fill> 
                <CssParameter name="fill">#ff7777</CssParameter> 
                <CssParameter name="fill-opacity">0.6</CssParameter> 
              </Fill> 
          </Halo>
         <Fill>
           <CssParameter name="fill">#000000</CssParameter>
           <CssParameter name="fill-opacity">1.0</CssParameter>
         </Fill>
       </TextSymbolizer>
        </Rule>
     <Rule>
       <Name>temp_less_10</Name>
       <Title>Below -10</Title>
       <ogc:Filter>
         <ogc:PropertyIsLessThan>
           <ogc:PropertyName>value</ogc:PropertyName>
           <ogc:Literal>-10</ogc:Literal>
         </ogc:PropertyIsLessThan>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#2E4AC9</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_10_6</Name>
       <Title>-10 - -6</Title>
       <ogc:Filter>
         <ogc:PropertyIsGreaterThanOrEqualTo>
           <ogc:PropertyName>value</ogc:PropertyName>
           <ogc:Literal>-10</ogc:Literal>
         </ogc:PropertyIsGreaterThanOrEqualTo>
         <ogc:PropertyIsLessThan>
           <ogc:PropertyName>value</ogc:PropertyName>
           <ogc:Literal>-6</ogc:Literal>
         </ogc:PropertyIsLessThan>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#41A0FC</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_6_3</Name>
       <Title>-6 - -3</Title>
       <ogc:Filter>
           <ogc:PropertyIsGreaterThanOrEqualTo>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>-6</ogc:Literal>
           </ogc:PropertyIsGreaterThanOrEqualTo>
         <ogc:PropertyIsLessThan>
           <ogc:PropertyName>value</ogc:PropertyName>
           <ogc:Literal>-3</ogc:Literal>
         </ogc:PropertyIsLessThan>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#58CCFB</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_3_0</Name>
       <Title>-3 - 0</Title>
       <ogc:Filter>
           <ogc:PropertyIsGreaterThanOrEqualTo>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>-3</ogc:Literal>
           </ogc:PropertyIsGreaterThanOrEqualTo>
         <ogc:PropertyIsLessThan>
           <ogc:PropertyName>value</ogc:PropertyName>
           <ogc:Literal>0</ogc:Literal>
         </ogc:PropertyIsLessThan>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#76F9FC</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_0_3</Name>
       <Title>0 to 3</Title>
       <ogc:Filter>
         <ogc:And>
           <ogc:PropertyIsGreaterThanOrEqualTo>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>0</ogc:Literal>
           </ogc:PropertyIsGreaterThanOrEqualTo>
           <ogc:PropertyIsLessThan>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>3</ogc:Literal>
           </ogc:PropertyIsLessThan>
         </ogc:And>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#6AC597</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_3_6</Name>
       <Title>3 to 6</Title>
       <ogc:Filter>
         <ogc:And>
           <ogc:PropertyIsGreaterThanOrEqualTo>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>3</ogc:Literal>
           </ogc:PropertyIsGreaterThanOrEqualTo>
           <ogc:PropertyIsLessThan>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>6</ogc:Literal>
           </ogc:PropertyIsLessThan>
         </ogc:And>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#479364</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_6_9</Name>
       <Title>6 to 9</Title>
       <ogc:Filter>
         <ogc:And>
           <ogc:PropertyIsGreaterThanOrEqualTo>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>6</ogc:Literal>
           </ogc:PropertyIsGreaterThanOrEqualTo>
           <ogc:PropertyIsLessThan>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>9</ogc:Literal>
           </ogc:PropertyIsLessThan>
         </ogc:And>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#2E6000</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_9_12</Name>
       <Title>9 to 12</Title>
       <ogc:Filter>
         <ogc:And>
           <ogc:PropertyIsGreaterThanOrEqualTo>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>9</ogc:Literal>
           </ogc:PropertyIsGreaterThanOrEqualTo>
           <ogc:PropertyIsLessThan>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>12</ogc:Literal>
           </ogc:PropertyIsLessThan>
         </ogc:And>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#579102</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_12_15</Name>
       <Title>12 to 15</Title>
       <ogc:Filter>
         <ogc:And>
           <ogc:PropertyIsGreaterThanOrEqualTo>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>12</ogc:Literal>
           </ogc:PropertyIsGreaterThanOrEqualTo>
           <ogc:PropertyIsLessThan>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>15</ogc:Literal>
           </ogc:PropertyIsLessThan>
         </ogc:And>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#9AF20C</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_15_18</Name>
       <Title>15 to 18</Title>
       <ogc:Filter>
         <ogc:And>
           <ogc:PropertyIsGreaterThanOrEqualTo>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>15</ogc:Literal>
           </ogc:PropertyIsGreaterThanOrEqualTo>
           <ogc:PropertyIsLessThan>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>18</ogc:Literal>
           </ogc:PropertyIsLessThan>
         </ogc:And>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#B7F318</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_18_121</Name>
       <Title>18 to 21</Title>
       <ogc:Filter>
         <ogc:And>
           <ogc:PropertyIsGreaterThanOrEqualTo>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>18</ogc:Literal>
           </ogc:PropertyIsGreaterThanOrEqualTo>
           <ogc:PropertyIsLessThan>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>21</ogc:Literal>
           </ogc:PropertyIsLessThan>
         </ogc:And>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#DBF525</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_21_24</Name>
       <Title>21 to 24</Title>
       <ogc:Filter>
         <ogc:And>
           <ogc:PropertyIsGreaterThanOrEqualTo>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>21</ogc:Literal>
           </ogc:PropertyIsGreaterThanOrEqualTo>
           <ogc:PropertyIsLessThan>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>24</ogc:Literal>
           </ogc:PropertyIsLessThan>
         </ogc:And>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#FAF833</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_24_27</Name>
       <Title>24 to 27</Title>
       <ogc:Filter>
         <ogc:And>
           <ogc:PropertyIsGreaterThanOrEqualTo>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>24</ogc:Literal>
           </ogc:PropertyIsGreaterThanOrEqualTo>
           <ogc:PropertyIsLessThan>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>27</ogc:Literal>
           </ogc:PropertyIsLessThan>
         </ogc:And>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#F9C933</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_27_30</Name>
       <Title>27 to 30</Title>
       <ogc:Filter>
         <ogc:And>
           <ogc:PropertyIsGreaterThanOrEqualTo>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>27</ogc:Literal>
           </ogc:PropertyIsGreaterThanOrEqualTo>
           <ogc:PropertyIsLessThan>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>30</ogc:Literal>
           </ogc:PropertyIsLessThan>
         </ogc:And>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#F19C33</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_30_33</Name>
       <Title>30 to 33</Title>
       <ogc:Filter>
         <ogc:And>
           <ogc:PropertyIsGreaterThanOrEqualTo>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>30</ogc:Literal>
           </ogc:PropertyIsGreaterThanOrEqualTo>
           <ogc:PropertyIsLessThan>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>33</ogc:Literal>
           </ogc:PropertyIsLessThan>
         </ogc:And>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#ED7233</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_33_36</Name>
       <Title>33 to 36</Title>
       <ogc:Filter>
         <ogc:And>
           <ogc:PropertyIsGreaterThanOrEqualTo>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>33</ogc:Literal>
           </ogc:PropertyIsGreaterThanOrEqualTo>
           <ogc:PropertyIsLessThan>
             <ogc:PropertyName>value</ogc:PropertyName>
             <ogc:Literal>36</ogc:Literal>
           </ogc:PropertyIsLessThan>
         </ogc:And>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#EA3F33</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>temp_36_</Name>
       <Title>Greater than 36</Title>
       <ogc:Filter>
         <ogc:PropertyIsGreaterThanOrEqualTo>
           <ogc:PropertyName>value</ogc:PropertyName>
           <ogc:Literal>36</ogc:Literal>
         </ogc:PropertyIsGreaterThanOrEqualTo>
       </ogc:Filter>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#BB3026</CssParameter>
             </Fill>
            <Stroke>
              <CssParameter name="stroke">#FFFFFF</CssParameter>
            </Stroke>
           </Mark>
           <Size>8</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>