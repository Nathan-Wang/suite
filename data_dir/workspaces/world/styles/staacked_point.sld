<StyledLayerDescriptor version="1.0.0" 
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
 xmlns="http://www.opengis.net/sld" 
 xmlns:ogc="http://www.opengis.net/ogc" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>stacked_point</Name>
    <UserStyle>
    <!-- Styles can have names, titles and abstracts -->
      <Title>Stacked Point</Title>
      <Abstract>A style for stacked points</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <!-- A FeatureTypeStyle for rendering points -->
      <FeatureTypeStyle>
        <Transformation>
          <ogc:Function name="gs:PointStacker">
            <ogc:Function name="parameter">
              <ogc:Literal>data</ogc:Literal>
            </ogc:Function>
            <ogc:Function name="parameter">
              <ogc:Literal>cellSize</ogc:Literal>
              <ogc:Literal>25</ogc:Literal>
            </ogc:Function>
            <ogc:Function name="parameter">
              <ogc:Literal>targetBBOX</ogc:Literal>
              <ogc:Function name="env">
                <ogc:Literal>wms_bbox</ogc:Literal>
              </ogc:Function>
            </ogc:Function>
            <ogc:Function name="parameter">
              <ogc:Literal>targetWidth</ogc:Literal>
              <ogc:Function name="env">
                <ogc:Literal>wms_width</ogc:Literal>
              </ogc:Function>
            </ogc:Function>
            <ogc:Function name="parameter">
              <ogc:Literal>targetHeight</ogc:Literal>
              <ogc:Function name="env">
                <ogc:Literal>wms_height</ogc:Literal>
              </ogc:Function>
            </ogc:Function>
          </ogc:Function>
        </Transformation>
        <Rule>
          <Name>rule1</Name>
          <Title>Dot</Title>
       <ogc:Filter>
         <ogc:PropertyIsLessThanOrEqualTo>
           <ogc:PropertyName>count</ogc:PropertyName>
           <ogc:Literal>1</ogc:Literal>
         </ogc:PropertyIsLessThanOrEqualTo>
       </ogc:Filter>
            <PointSymbolizer>
              <Graphic>
                <Mark>
                  <WellKnownName>triangle</WellKnownName>
                  <Fill>
                    <CssParameter name="fill">#FF0000</CssParameter>
                  </Fill>
                </Mark>
              <Size>8</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>rule1</Name>
          <Title>Dot</Title>
       <ogc:Filter>
         <ogc:PropertyIsGreaterThan>
           <ogc:PropertyName>count</ogc:PropertyName>
           <ogc:Literal>1</ogc:Literal>
         </ogc:PropertyIsGreaterThan>
       </ogc:Filter>
            <PointSymbolizer>
              <Graphic>
                <Mark>
                  <WellKnownName>circle</WellKnownName>
                  <Fill>
                    <CssParameter name="fill">#AA0000</CssParameter>
                  </Fill>
                </Mark>
              <Size>18</Size>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>
            <Label>
             <ogc:PropertyName>count</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Arial</CssParameter>
              <CssParameter name="font-size">12</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font> 
            <LabelPlacement>
              <PointPlacement>
                 <AnchorPoint>
                   <AnchorPointX>0.5</AnchorPointX>
                   <AnchorPointY>0.8</AnchorPointY>
                 </AnchorPoint>
               </PointPlacement>
            </LabelPlacement>
            <Stroke>
              <CssParameter name="stroke">#ffffff</CssParameter>
            </Stroke>
           <Halo>
              <Radius>2</Radius>
              <Fill> 
                <CssParameter name="fill">#AA0000</CssParameter> 
                <CssParameter name="fill-opacity">0.9</CssParameter> 
              </Fill> 
          </Halo>
          <Fill>
            <CssParameter name="fill">#FFFFFF</CssParameter>
            <CssParameter name="fill-opacity">1.0</CssParameter>
          </Fill>
          </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>