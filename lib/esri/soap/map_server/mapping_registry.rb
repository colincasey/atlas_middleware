require File.dirname(__FILE__) + '/classes.rb'
require 'soap/mapping'

module ESRI
  module Soap
    module MapServer
      module MappingRegistry
        EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
        LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
        NsC_93 = "http://www.esri.com/schemas/ArcGIS/9.3"

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::TileCacheInfo,
          :schema_type => XSD::QName.new(NsC_93, "TileCacheInfo"),
          :schema_element => [
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]],
            ["tileOrigin", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "TileOrigin")], [0, 1]],
            ["tileCols", ["SOAP::SOAPInt", XSD::QName.new(nil, "TileCols")]],
            ["tileRows", ["SOAP::SOAPInt", XSD::QName.new(nil, "TileRows")]],
            ["dPI", ["SOAP::SOAPInt", XSD::QName.new(nil, "DPI")]],
            ["lODInfos", ["ESRI::Soap::MapServer::ArrayOfLODInfo", XSD::QName.new(nil, "LODInfos")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::LODInfo,
          :schema_type => XSD::QName.new(NsC_93, "LODInfo"),
          :schema_element => [
            ["levelID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LevelID")]],
            ["scale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Scale")]],
            ["resolution", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Resolution")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfLODInfo,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfLODInfo"),
          :schema_element => [
            ["lODInfo", ["ESRI::Soap::MapServer::LODInfo[]", XSD::QName.new(nil, "LODInfo")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::AreaPatch,
          :schema_type => XSD::QName.new(NsC_93, "AreaPatch"),
          :schema_basetype => XSD::QName.new(NsC_93, "Patch"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["preserveAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PreserveAspectRatio")], [0, 1]],
            ["geometry", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Geometry")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfGraphicElement,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfGraphicElement"),
          :schema_element => [
            ["graphicElement", ["ESRI::Soap::MapServer::GraphicElement[]", XSD::QName.new(nil, "GraphicElement")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfLayerDescription,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfLayerDescription"),
          :schema_element => [
            ["layerDescription", ["ESRI::Soap::MapServer::LayerDescription[]", XSD::QName.new(nil, "LayerDescription")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapLayerInfo,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapLayerInfo"),
          :schema_element => [
            ["mapLayerInfo", ["ESRI::Soap::MapServer::MapLayerInfo[]", XSD::QName.new(nil, "MapLayerInfo")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerBookmark,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerBookmark"),
          :schema_element => [
            ["mapServerBookmark", ["ESRI::Soap::MapServer::MapServerBookmark[]", XSD::QName.new(nil, "MapServerBookmark")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerFindResult,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerFindResult"),
          :schema_element => [
            ["mapServerFindResult", ["ESRI::Soap::MapServer::MapServerFindResult[]", XSD::QName.new(nil, "MapServerFindResult")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerHyperlink,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerHyperlink"),
          :schema_element => [
            ["mapServerHyperlink", ["ESRI::Soap::MapServer::MapServerHyperlink[]", XSD::QName.new(nil, "MapServerHyperlink")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerIdentifyResult,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerIdentifyResult"),
          :schema_element => [
            ["mapServerIdentifyResult", ["ESRI::Soap::MapServer::MapServerIdentifyResult[]", XSD::QName.new(nil, "MapServerIdentifyResult")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerLegendClass,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerLegendClass"),
          :schema_element => [
            ["mapServerLegendClass", ["ESRI::Soap::MapServer::MapServerLegendClass[]", XSD::QName.new(nil, "MapServerLegendClass")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerLegendGroup,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerLegendGroup"),
          :schema_element => [
            ["mapServerLegendGroup", ["ESRI::Soap::MapServer::MapServerLegendGroup[]", XSD::QName.new(nil, "MapServerLegendGroup")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerLegendInfo,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerLegendInfo"),
          :schema_element => [
            ["mapServerLegendInfo", ["ESRI::Soap::MapServer::MapServerLegendInfo[]", XSD::QName.new(nil, "MapServerLegendInfo")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerRelationship,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerRelationship"),
          :schema_element => [
            ["mapServerRelationship", ["ESRI::Soap::MapServer::MapServerRelationship[]", XSD::QName.new(nil, "MapServerRelationship")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerRow,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerRow"),
          :schema_element => [
            ["mapServerRow", ["ESRI::Soap::MapServer::MapServerRow[]", XSD::QName.new(nil, "MapServerRow")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::CenterAndScale,
          :schema_type => XSD::QName.new(NsC_93, "CenterAndScale"),
          :schema_basetype => XSD::QName.new(NsC_93, "MapArea"),
          :schema_element => [
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["center", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "Center")], [0, 1]],
            ["scale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Scale")]],
            ["dPI", ["SOAP::SOAPDouble", XSD::QName.new(nil, "DPI")], [0, 1]],
            ["devBottom", ["SOAP::SOAPInt", XSD::QName.new(nil, "DevBottom")], [0, 1]],
            ["devLeft", ["SOAP::SOAPInt", XSD::QName.new(nil, "DevLeft")], [0, 1]],
            ["devTop", ["SOAP::SOAPInt", XSD::QName.new(nil, "DevTop")], [0, 1]],
            ["devRight", ["SOAP::SOAPInt", XSD::QName.new(nil, "DevRight")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::CenterAndSize,
          :schema_type => XSD::QName.new(NsC_93, "CenterAndSize"),
          :schema_basetype => XSD::QName.new(NsC_93, "MapArea"),
          :schema_element => [
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["center", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "Center")], [0, 1]],
            ["height", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Height")]],
            ["width", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Width")]],
            ["units", ["SOAP::SOAPString", XSD::QName.new(nil, "Units")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::FeatureExtent,
          :schema_type => XSD::QName.new(NsC_93, "FeatureExtent"),
          :schema_basetype => XSD::QName.new(NsC_93, "MapArea"),
          :schema_element => [
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["defaultScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "DefaultScale")]],
            ["expandRatio", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ExpandRatio")]],
            ["featureIDs", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "FeatureIDs")], [0, 1]],
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ImageDescription,
          :schema_type => XSD::QName.new(NsC_93, "ImageDescription"),
          :schema_element => [
            ["imageType", ["ESRI::Soap::MapServer::ImageType", XSD::QName.new(nil, "ImageType")], [0, 1]],
            ["imageDisplay", ["ESRI::Soap::MapServer::ImageDisplay", XSD::QName.new(nil, "ImageDisplay")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ImageDisplay,
          :schema_type => XSD::QName.new(NsC_93, "ImageDisplay"),
          :schema_element => [
            ["imageHeight", ["SOAP::SOAPInt", XSD::QName.new(nil, "ImageHeight")]],
            ["imageWidth", ["SOAP::SOAPInt", XSD::QName.new(nil, "ImageWidth")]],
            ["imageDPI", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ImageDPI")]],
            ["transparentColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "TransparentColor")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ImageResult,
          :schema_type => XSD::QName.new(NsC_93, "ImageResult"),
          :schema_element => [
            ["imageData", ["SOAP::SOAPBase64", XSD::QName.new(nil, "ImageData")], [0, 1]],
            ["imageURL", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageURL")]],
            ["imageHeight", ["SOAP::SOAPInt", XSD::QName.new(nil, "ImageHeight")]],
            ["imageWidth", ["SOAP::SOAPInt", XSD::QName.new(nil, "ImageWidth")]],
            ["imageDPI", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ImageDPI")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ImageType,
          :schema_type => XSD::QName.new(NsC_93, "ImageType"),
          :schema_element => [
            ["imageFormat", ["ESRI::Soap::MapServer::EsriImageFormat", XSD::QName.new(nil, "ImageFormat")]],
            ["imageReturnType", ["ESRI::Soap::MapServer::EsriImageReturnType", XSD::QName.new(nil, "ImageReturnType")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::LayerDescription,
          :schema_type => XSD::QName.new(NsC_93, "LayerDescription"),
          :schema_element => [
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["visible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Visible")]],
            ["showLabels", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ShowLabels")]],
            ["scaleSymbols", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ScaleSymbols")]],
            ["selectionFeatures", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "SelectionFeatures")], [0, 1]],
            ["selectionColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "SelectionColor")], [0, 1]],
            ["selectionSymbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "SelectionSymbol")], [0, 1]],
            ["setSelectionSymbol", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "SetSelectionSymbol")]],
            ["selectionBufferDistance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "SelectionBufferDistance")]],
            ["showSelectionBuffer", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ShowSelectionBuffer")]],
            ["definitionExpression", ["SOAP::SOAPString", XSD::QName.new(nil, "DefinitionExpression")]],
            ["sourceID", ["SOAP::SOAPString", XSD::QName.new(nil, "SourceID")], [0, 1]],
            ["selectionBufferSymbol", ["ESRI::Soap::MapServer::FillSymbol", XSD::QName.new(nil, "SelectionBufferSymbol")], [0, 1]],
            ["layerResultOptions", ["ESRI::Soap::MapServer::LayerResultOptions", XSD::QName.new(nil, "LayerResultOptions")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::LayerResultOptions,
          :schema_type => XSD::QName.new(NsC_93, "LayerResultOptions"),
          :schema_element => [
            ["includeGeometry", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IncludeGeometry")], [0, 1]],
            ["geometryResultOptions", ["ESRI::Soap::MapServer::GeometryResultOptions", XSD::QName.new(nil, "GeometryResultOptions")], [0, 1]],
            ["returnFieldNamesInResults", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ReturnFieldNamesInResults")], [0, 1]],
            ["formatValuesInResults", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FormatValuesInResults")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::LinePatch,
          :schema_type => XSD::QName.new(NsC_93, "LinePatch"),
          :schema_basetype => XSD::QName.new(NsC_93, "Patch"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["preserveAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PreserveAspectRatio")], [0, 1]],
            ["geometry", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Geometry")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapDescription,
          :schema_type => XSD::QName.new(NsC_93, "MapDescription"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["mapArea", ["ESRI::Soap::MapServer::MapArea", XSD::QName.new(nil, "MapArea")], [0, 1]],
            ["layerDescriptions", ["ESRI::Soap::MapServer::ArrayOfLayerDescription", XSD::QName.new(nil, "LayerDescriptions")], [0, 1]],
            ["rotation", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Rotation")]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]],
            ["transparentColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "TransparentColor")], [0, 1]],
            ["selectionColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "SelectionColor")], [0, 1]],
            ["backgroundSymbol", ["ESRI::Soap::MapServer::FillSymbol", XSD::QName.new(nil, "BackgroundSymbol")], [0, 1]],
            ["customGraphics", ["ESRI::Soap::MapServer::ArrayOfGraphicElement", XSD::QName.new(nil, "CustomGraphics")], [0, 1]],
            ["geoTransformation", ["ESRI::Soap::MapServer::GeoTransformation", XSD::QName.new(nil, "GeoTransformation")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapExtent,
          :schema_type => XSD::QName.new(NsC_93, "MapExtent"),
          :schema_basetype => XSD::QName.new(NsC_93, "MapArea"),
          :schema_element => [
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapImage,
          :schema_type => XSD::QName.new(NsC_93, "MapImage"),
          :schema_element => [
            ["imageData", ["SOAP::SOAPBase64", XSD::QName.new(nil, "ImageData")], [0, 1]],
            ["imageURL", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageURL")]],
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["visibleLayerIDs", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "VisibleLayerIDs")], [0, 1]],
            ["mapScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MapScale")]],
            ["imageHeight", ["SOAP::SOAPInt", XSD::QName.new(nil, "ImageHeight")]],
            ["imageWidth", ["SOAP::SOAPInt", XSD::QName.new(nil, "ImageWidth")]],
            ["imageDPI", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ImageDPI")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapLayerInfo,
          :schema_type => XSD::QName.new(NsC_93, "MapLayerInfo"),
          :schema_element => [
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")]],
            ["layerType", ["SOAP::SOAPString", XSD::QName.new(nil, "LayerType")]],
            ["sourceDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SourceDescription")]],
            ["hasLabels", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasLabels")]],
            ["canSelect", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CanSelect")]],
            ["canScaleSymbols", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CanScaleSymbols")]],
            ["minScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MinScale")]],
            ["maxScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MaxScale")]],
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["hasHyperlinks", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasHyperlinks")]],
            ["hasAttributes", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasAttributes")]],
            ["canIdentify", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CanIdentify")]],
            ["canFind", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CanFind")]],
            ["isFeatureLayer", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsFeatureLayer")]],
            ["fields", ["ESRI::Soap::MapServer::Fields", XSD::QName.new(nil, "Fields")], [0, 1]],
            ["displayField", ["SOAP::SOAPString", XSD::QName.new(nil, "DisplayField")]],
            ["iDField", ["SOAP::SOAPString", XSD::QName.new(nil, "IDField")]],
            ["isComposite", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsComposite")]],
            ["subLayerIDs", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "SubLayerIDs")], [0, 1]],
            ["parentLayerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "ParentLayerID")]],
            ["fieldAliases", ["ESRI::Soap::MapServer::ArrayOfString", XSD::QName.new(nil, "FieldAliases")], [0, 1]],
            ["copyrightText", ["SOAP::SOAPString", XSD::QName.new(nil, "CopyrightText")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerBookmark,
          :schema_type => XSD::QName.new(NsC_93, "MapServerBookmark"),
          :schema_basetype => XSD::QName.new(NsC_93, "MapArea"),
          :schema_element => [
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerFindResult,
          :schema_type => XSD::QName.new(NsC_93, "MapServerFindResult"),
          :schema_element => [
            ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "Value")]],
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["featureID", ["SOAP::SOAPInt", XSD::QName.new(nil, "FeatureID")]],
            ["fieldName", ["SOAP::SOAPString", XSD::QName.new(nil, "FieldName")]],
            ["shape", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Shape")], [0, 1]],
            ["properties", ["ESRI::Soap::MapServer::PropertySet", XSD::QName.new(nil, "Properties")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerHyperlink,
          :schema_type => XSD::QName.new(NsC_93, "MapServerHyperlink"),
          :schema_element => [
            ["location", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Location")], [0, 1]],
            ["uRL", ["SOAP::SOAPString", XSD::QName.new(nil, "URL")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerIdentifyResult,
          :schema_type => XSD::QName.new(NsC_93, "MapServerIdentifyResult"),
          :schema_element => [
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["properties", ["ESRI::Soap::MapServer::PropertySet", XSD::QName.new(nil, "Properties")], [0, 1]],
            ["shape", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Shape")], [0, 1]],
            ["relationships", ["ESRI::Soap::MapServer::ArrayOfMapServerRelationship", XSD::QName.new(nil, "Relationships")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerInfo,
          :schema_type => XSD::QName.new(NsC_93, "MapServerInfo"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")]],
            ["fullExtent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "FullExtent")], [0, 1]],
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]],
            ["mapLayerInfos", ["ESRI::Soap::MapServer::ArrayOfMapLayerInfo", XSD::QName.new(nil, "MapLayerInfos")], [0, 1]],
            ["backgroundColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "BackgroundColor")], [0, 1]],
            ["bookmarks", ["ESRI::Soap::MapServer::ArrayOfMapServerBookmark", XSD::QName.new(nil, "Bookmarks")], [0, 1]],
            ["defaultMapDescription", ["ESRI::Soap::MapServer::MapDescription", XSD::QName.new(nil, "DefaultMapDescription")], [0, 1]],
            ["units", ["ESRI::Soap::MapServer::EsriUnits", XSD::QName.new(nil, "Units")]],
            ["supportedImageReturnTypes", ["ESRI::Soap::MapServer::EsriImageReturnType", XSD::QName.new(nil, "SupportedImageReturnTypes")]],
            ["backgroundSymbol", ["ESRI::Soap::MapServer::FillSymbol", XSD::QName.new(nil, "BackgroundSymbol")], [0, 1]],
            ["copyrightText", ["SOAP::SOAPString", XSD::QName.new(nil, "CopyrightText")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerLegendClass,
          :schema_type => XSD::QName.new(NsC_93, "MapServerLegendClass"),
          :schema_element => [
            ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "Label")]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")]],
            ["symbolImage", ["ESRI::Soap::MapServer::ImageResult", XSD::QName.new(nil, "SymbolImage")], [0, 1]],
            ["transparentColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "TransparentColor")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerLegendGroup,
          :schema_type => XSD::QName.new(NsC_93, "MapServerLegendGroup"),
          :schema_element => [
            ["heading", ["SOAP::SOAPString", XSD::QName.new(nil, "Heading")]],
            ["legendClasses", ["ESRI::Soap::MapServer::ArrayOfMapServerLegendClass", XSD::QName.new(nil, "LegendClasses")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerLegendInfo,
          :schema_type => XSD::QName.new(NsC_93, "MapServerLegendInfo"),
          :schema_element => [
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["legendGroups", ["ESRI::Soap::MapServer::ArrayOfMapServerLegendGroup", XSD::QName.new(nil, "LegendGroups")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerLegendPatch,
          :schema_type => XSD::QName.new(NsC_93, "MapServerLegendPatch"),
          :schema_element => [
            ["width", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Width")]],
            ["height", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Height")]],
            ["imageDPI", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ImageDPI")]],
            ["linePatch", ["ESRI::Soap::MapServer::LinePatch", XSD::QName.new(nil, "LinePatch")], [0, 1]],
            ["areaPatch", ["ESRI::Soap::MapServer::AreaPatch", XSD::QName.new(nil, "AreaPatch")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerRelationship,
          :schema_type => XSD::QName.new(NsC_93, "MapServerRelationship"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["rows", ["ESRI::Soap::MapServer::ArrayOfMapServerRow", XSD::QName.new(nil, "Rows")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerRow,
          :schema_type => XSD::QName.new(NsC_93, "MapServerRow"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["properties", ["ESRI::Soap::MapServer::PropertySet", XSD::QName.new(nil, "Properties")], [0, 1]],
            ["relationships", ["ESRI::Soap::MapServer::ArrayOfMapServerRelationship", XSD::QName.new(nil, "Relationships")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::AlternatingScaleBar,
          :schema_type => XSD::QName.new(NsC_93, "AlternatingScaleBar"),
          :schema_basetype => XSD::QName.new(NsC_93, "ScaleBar"),
          :schema_element => [
            ["barHeight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "BarHeight")], [0, 1]],
            ["division", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Division")], [0, 1]],
            ["divisions", ["SOAP::SOAPShort", XSD::QName.new(nil, "Divisions")], [0, 1]],
            ["divisionsBeforeZero", ["SOAP::SOAPShort", XSD::QName.new(nil, "DivisionsBeforeZero")], [0, 1]],
            ["subdivisions", ["SOAP::SOAPShort", XSD::QName.new(nil, "Subdivisions")], [0, 1]],
            ["units", ["ESRI::Soap::MapServer::EsriUnits", XSD::QName.new(nil, "Units")], [0, 1]],
            ["unitLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "UnitLabel")], [0, 1]],
            ["unitLabelPosition", ["ESRI::Soap::MapServer::EsriScaleBarPos", XSD::QName.new(nil, "UnitLabelPosition")], [0, 1]],
            ["unitLabelGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "UnitLabelGap")], [0, 1]],
            ["unitLabelSymbol", ["ESRI::Soap::MapServer::TextSymbol", XSD::QName.new(nil, "UnitLabelSymbol")], [0, 1]],
            ["labelFrequency", ["ESRI::Soap::MapServer::EsriScaleBarFrequency", XSD::QName.new(nil, "LabelFrequency")], [0, 1]],
            ["labelPosition", ["ESRI::Soap::MapServer::EsriVertPosEnum", XSD::QName.new(nil, "LabelPosition")], [0, 1]],
            ["labelGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "LabelGap")], [0, 1]],
            ["labelSymbol", ["ESRI::Soap::MapServer::TextSymbol", XSD::QName.new(nil, "LabelSymbol")], [0, 1]],
            ["numberFormat", ["ESRI::Soap::MapServer::NumericFormat", XSD::QName.new(nil, "NumberFormat")], [0, 1]],
            ["resizeHint", ["ESRI::Soap::MapServer::EsriScaleBarResizeHint", XSD::QName.new(nil, "ResizeHint")], [0, 1]],
            ["fillSymbol1", ["ESRI::Soap::MapServer::FillSymbol", XSD::QName.new(nil, "FillSymbol1")], [0, 1]],
            ["fillSymbol2", ["ESRI::Soap::MapServer::FillSymbol", XSD::QName.new(nil, "FillSymbol2")], [0, 1]],
            ["divisionMarkSymbol", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "DivisionMarkSymbol")], [0, 1]],
            ["subdivisionMarkSymbol", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "SubdivisionMarkSymbol")], [0, 1]],
            ["divisionMarkHeight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "DivisionMarkHeight")], [0, 1]],
            ["subdivisionMarkHeight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "SubdivisionMarkHeight")], [0, 1]],
            ["markPosition", ["ESRI::Soap::MapServer::EsriVertPosEnum", XSD::QName.new(nil, "MarkPosition")], [0, 1]],
            ["markFrequency", ["ESRI::Soap::MapServer::EsriScaleBarFrequency", XSD::QName.new(nil, "MarkFrequency")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::SingleDivisionScaleBar,
          :schema_type => XSD::QName.new(NsC_93, "SingleDivisionScaleBar"),
          :schema_basetype => XSD::QName.new(NsC_93, "ScaleBar"),
          :schema_element => [
            ["barHeight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "BarHeight")], [0, 1]],
            ["division", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Division")], [0, 1]],
            ["divisions", ["SOAP::SOAPShort", XSD::QName.new(nil, "Divisions")], [0, 1]],
            ["divisionsBeforeZero", ["SOAP::SOAPShort", XSD::QName.new(nil, "DivisionsBeforeZero")], [0, 1]],
            ["subdivisions", ["SOAP::SOAPShort", XSD::QName.new(nil, "Subdivisions")], [0, 1]],
            ["units", ["ESRI::Soap::MapServer::EsriUnits", XSD::QName.new(nil, "Units")], [0, 1]],
            ["unitLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "UnitLabel")], [0, 1]],
            ["unitLabelPosition", ["ESRI::Soap::MapServer::EsriScaleBarPos", XSD::QName.new(nil, "UnitLabelPosition")], [0, 1]],
            ["unitLabelGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "UnitLabelGap")], [0, 1]],
            ["unitLabelSymbol", ["ESRI::Soap::MapServer::TextSymbol", XSD::QName.new(nil, "UnitLabelSymbol")], [0, 1]],
            ["labelFrequency", ["ESRI::Soap::MapServer::EsriScaleBarFrequency", XSD::QName.new(nil, "LabelFrequency")], [0, 1]],
            ["labelPosition", ["ESRI::Soap::MapServer::EsriVertPosEnum", XSD::QName.new(nil, "LabelPosition")], [0, 1]],
            ["labelGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "LabelGap")], [0, 1]],
            ["labelSymbol", ["ESRI::Soap::MapServer::TextSymbol", XSD::QName.new(nil, "LabelSymbol")], [0, 1]],
            ["numberFormat", ["ESRI::Soap::MapServer::NumericFormat", XSD::QName.new(nil, "NumberFormat")], [0, 1]],
            ["resizeHint", ["ESRI::Soap::MapServer::EsriScaleBarResizeHint", XSD::QName.new(nil, "ResizeHint")], [0, 1]],
            ["fillSymbol", ["ESRI::Soap::MapServer::FillSymbol", XSD::QName.new(nil, "FillSymbol")], [0, 1]],
            ["divisionMarkSymbol", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "DivisionMarkSymbol")], [0, 1]],
            ["subdivisionMarkSymbol", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "SubdivisionMarkSymbol")], [0, 1]],
            ["divisionMarkHeight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "DivisionMarkHeight")], [0, 1]],
            ["subdivisionMarkHeight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "SubdivisionMarkHeight")], [0, 1]],
            ["markPosition", ["ESRI::Soap::MapServer::EsriVertPosEnum", XSD::QName.new(nil, "MarkPosition")], [0, 1]],
            ["markFrequency", ["ESRI::Soap::MapServer::EsriScaleBarFrequency", XSD::QName.new(nil, "MarkFrequency")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::SQLSyntaxInfo,
          :schema_type => XSD::QName.new(NsC_93, "SQLSyntaxInfo"),
          :schema_element => [
            ["functionNames", ["ESRI::Soap::MapServer::PropertySet", XSD::QName.new(nil, "FunctionNames")], [0, 1]],
            ["specialCharacters", ["ESRI::Soap::MapServer::PropertySet", XSD::QName.new(nil, "SpecialCharacters")], [0, 1]],
            ["supportedPredicates", ["ESRI::Soap::MapServer::ArrayOfString", XSD::QName.new(nil, "SupportedPredicates")], [0, 1]],
            ["supportedClauses", ["ESRI::Soap::MapServer::ArrayOfString", XSD::QName.new(nil, "SupportedClauses")], [0, 1]],
            ["identifierCase", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IdentifierCase")]],
            ["delimitedIdentifierCase", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DelimitedIdentifierCase")]],
            ["stringComparisonCase", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "StringComparisonCase")]],
            ["keywords", ["ESRI::Soap::MapServer::ArrayOfString", XSD::QName.new(nil, "Keywords")], [0, 1]],
            ["invalidCharacters", ["SOAP::SOAPString", XSD::QName.new(nil, "InvalidCharacters")]],
            ["invalidStartingCharacters", ["SOAP::SOAPString", XSD::QName.new(nil, "InvalidStartingCharacters")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::SymbolBackground,
          :schema_type => XSD::QName.new(NsC_93, "SymbolBackground"),
          :schema_basetype => XSD::QName.new(NsC_93, "Background"),
          :schema_element => [
            ["horizontalGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "HorizontalGap")]],
            ["cornerRounding", ["SOAP::SOAPShort", XSD::QName.new(nil, "CornerRounding")]],
            ["verticalGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "VerticalGap")]],
            ["symbol", ["ESRI::Soap::MapServer::FillSymbol", XSD::QName.new(nil, "Symbol")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::SymbolBorder,
          :schema_type => XSD::QName.new(NsC_93, "SymbolBorder"),
          :schema_basetype => XSD::QName.new(NsC_93, "Border"),
          :schema_element => [
            ["horizontalGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "HorizontalGap")]],
            ["cornerRounding", ["SOAP::SOAPShort", XSD::QName.new(nil, "CornerRounding")]],
            ["verticalGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "VerticalGap")]],
            ["symbol", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "Symbol")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::SymbolShadow,
          :schema_type => XSD::QName.new(NsC_93, "SymbolShadow"),
          :schema_basetype => XSD::QName.new(NsC_93, "Shadow"),
          :schema_element => [
            ["symbol", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "Symbol")], [0, 1]],
            ["cornerRounding", ["SOAP::SOAPShort", XSD::QName.new(nil, "CornerRounding")]],
            ["horizontalOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "HorizontalOffset")]],
            ["verticalOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "VerticalOffset")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::LineElement,
          :schema_type => XSD::QName.new(NsC_93, "LineElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]],
            ["line", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Line")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]],
            ["fixedAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FixedAspectRatio")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::CircleElement,
          :schema_type => XSD::QName.new(NsC_93, "CircleElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["rectangle", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Rectangle")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]],
            ["fixedAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FixedAspectRatio")], [0, 1]],
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EllipseElement,
          :schema_type => XSD::QName.new(NsC_93, "EllipseElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["rectangle", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Rectangle")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]],
            ["fixedAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FixedAspectRatio")], [0, 1]],
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::GroupElement,
          :schema_type => XSD::QName.new(NsC_93, "GroupElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "Element"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["elements", ["ESRI::Soap::MapServer::ArrayOfGraphicElement", XSD::QName.new(nil, "Elements")]],
            ["rectangle", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Rectangle")], [0, 1]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]],
            ["fixedAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FixedAspectRatio")], [0, 1]],
            ["border", ["ESRI::Soap::MapServer::Border", XSD::QName.new(nil, "Border")], [0, 1]],
            ["background", ["ESRI::Soap::MapServer::Background", XSD::QName.new(nil, "Background")], [0, 1]],
            ["draftMode", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DraftMode")], [0, 1]],
            ["shadow", ["ESRI::Soap::MapServer::Shadow", XSD::QName.new(nil, "Shadow")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MarkerElement,
          :schema_type => XSD::QName.new(NsC_93, "MarkerElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]],
            ["point", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "Point")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ParagraphTextElement,
          :schema_type => XSD::QName.new(NsC_93, "ParagraphTextElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["text", ["SOAP::SOAPString", XSD::QName.new(nil, "Text")], [0, 1]],
            ["scale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Scale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]],
            ["textGeometry", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "TextGeometry")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]],
            ["frameBorder", ["ESRI::Soap::MapServer::Border", XSD::QName.new(nil, "FrameBorder")], [0, 1]],
            ["frameBackground", ["ESRI::Soap::MapServer::Background", XSD::QName.new(nil, "FrameBackground")], [0, 1]],
            ["frameShadow", ["ESRI::Soap::MapServer::Shadow", XSD::QName.new(nil, "FrameShadow")], [0, 1]],
            ["columnGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ColumnGap")], [0, 1]],
            ["columnCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "ColumnCount")], [0, 1]],
            ["margin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Margin")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::PolygonElement,
          :schema_type => XSD::QName.new(NsC_93, "PolygonElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]],
            ["polygon", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Polygon")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]],
            ["fixedAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FixedAspectRatio")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::RectangleElement,
          :schema_type => XSD::QName.new(NsC_93, "RectangleElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["rectangle", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Rectangle")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]],
            ["fixedAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FixedAspectRatio")], [0, 1]],
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::TextElement,
          :schema_type => XSD::QName.new(NsC_93, "TextElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["text", ["SOAP::SOAPString", XSD::QName.new(nil, "Text")], [0, 1]],
            ["scale", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Scale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]],
            ["textGeometry", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "TextGeometry")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::Patch,
          :schema_type => XSD::QName.new(NsC_93, "Patch"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["preserveAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PreserveAspectRatio")], [0, 1]],
            ["geometry", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Geometry")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::TileImageInfo,
          :schema_type => XSD::QName.new(NsC_93, "TileImageInfo"),
          :schema_element => [
            ["cacheTileFormat", ["SOAP::SOAPString", XSD::QName.new(nil, "CacheTileFormat")]],
            ["compressionQuality", ["SOAP::SOAPInt", XSD::QName.new(nil, "CompressionQuality")]],
            ["antialiasing", ["SOAP::SOAPString", XSD::QName.new(nil, "Antialiasing")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::LayerCacheInfo,
          :schema_type => XSD::QName.new(NsC_93, "LayerCacheInfo"),
          :schema_element => [
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["hasCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasCache")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfLayerCacheInfo,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfLayerCacheInfo"),
          :schema_element => [
            ["layerCacheInfo", ["ESRI::Soap::MapServer::LayerCacheInfo", XSD::QName.new(nil, "LayerCacheInfo")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::CacheDescriptionInfo,
          :schema_type => XSD::QName.new(NsC_93, "CacheDescriptionInfo"),
          :schema_element => [
            ["tileCacheInfo", ["ESRI::Soap::MapServer::TileCacheInfo", XSD::QName.new(nil, "TileCacheInfo")]],
            ["tileImageInfo", ["ESRI::Soap::MapServer::TileImageInfo", XSD::QName.new(nil, "TileImageInfo")]],
            ["layerCacheInfos", ["ESRI::Soap::MapServer::ArrayOfLayerCacheInfo", XSD::QName.new(nil, "LayerCacheInfos")]],
            ["cacheControlInfo", ["ESRI::Soap::MapServer::CacheControlInfo", XSD::QName.new(nil, "CacheControlInfo")]],
            ["serviceType", ["ESRI::Soap::MapServer::EsriCachedMapServiceType", XSD::QName.new(nil, "ServiceType")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::CacheControlInfo,
          :schema_type => XSD::QName.new(NsC_93, "CacheControlInfo"),
          :schema_element => [
            ["clientCachingAllowed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ClientCachingAllowed")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::QueryResultOptions,
          :schema_type => XSD::QName.new(NsC_93, "QueryResultOptions"),
          :schema_element => [
            ["format", ["ESRI::Soap::MapServer::EsriQueryResultFormat", XSD::QName.new(nil, "Format")]],
            ["formatProperties", ["ESRI::Soap::MapServer::PropertySet", XSD::QName.new(nil, "FormatProperties")], [0, 1]],
            ["geoTransformation", ["ESRI::Soap::MapServer::GeoTransformation", XSD::QName.new(nil, "GeoTransformation")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::QueryResult,
          :schema_type => XSD::QName.new(NsC_93, "QueryResult"),
          :schema_element => [
            ["mimeData", ["SOAP::SOAPBase64", XSD::QName.new(nil, "MimeData")], [0, 1]],
            ["uRL", ["SOAP::SOAPString", XSD::QName.new(nil, "URL")]],
            ["object", [nil, XSD::QName.new(nil, "Object")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::GrayColor,
          :schema_type => XSD::QName.new(NsC_93, "GrayColor"),
          :schema_basetype => XSD::QName.new(NsC_93, "Color"),
          :schema_element => [
            ["useWindowsDithering", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "UseWindowsDithering")], [0, 1]],
            ["alphaValue", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "AlphaValue")], [0, 1]],
            ["grayLevel", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "GrayLevel")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::RgbColor,
          :schema_type => XSD::QName.new(NsC_93, "RgbColor"),
          :schema_basetype => XSD::QName.new(NsC_93, "Color"),
          :schema_element => [
            ["useWindowsDithering", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "UseWindowsDithering")], [0, 1]],
            ["alphaValue", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "AlphaValue")], [0, 1]],
            ["red", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Red")]],
            ["green", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Green")]],
            ["blue", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Blue")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::CmykColor,
          :schema_type => XSD::QName.new(NsC_93, "CmykColor"),
          :schema_basetype => XSD::QName.new(NsC_93, "Color"),
          :schema_element => [
            ["useWindowsDithering", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "UseWindowsDithering")], [0, 1]],
            ["alphaValue", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "AlphaValue")], [0, 1]],
            ["cyan", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Cyan")]],
            ["magenta", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Magenta")]],
            ["yellow", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Yellow")]],
            ["black", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Black")]],
            ["overprint", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Overprint")]],
            ["isSpot", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsSpot")]],
            ["spotDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SpotDescription")]],
            ["spotPercent", ["SOAP::SOAPShort", XSD::QName.new(nil, "SpotPercent")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::HlsColor,
          :schema_type => XSD::QName.new(NsC_93, "HlsColor"),
          :schema_basetype => XSD::QName.new(NsC_93, "Color"),
          :schema_element => [
            ["useWindowsDithering", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "UseWindowsDithering")], [0, 1]],
            ["alphaValue", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "AlphaValue")], [0, 1]],
            ["hue", ["SOAP::SOAPShort", XSD::QName.new(nil, "Hue")]],
            ["lightness", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Lightness")]],
            ["saturation", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Saturation")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::HsvColor,
          :schema_type => XSD::QName.new(NsC_93, "HsvColor"),
          :schema_basetype => XSD::QName.new(NsC_93, "Color"),
          :schema_element => [
            ["useWindowsDithering", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "UseWindowsDithering")], [0, 1]],
            ["alphaValue", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "AlphaValue")], [0, 1]],
            ["hue", ["SOAP::SOAPShort", XSD::QName.new(nil, "Hue")]],
            ["saturation", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Saturation")]],
            ["value", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Value")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::SimpleFillSymbol,
          :schema_type => XSD::QName.new(NsC_93, "SimpleFillSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "FillSymbol"),
          :schema_element => [
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["outline", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "Outline")], [0, 1]],
            ["style", ["ESRI::Soap::MapServer::EsriSimpleFillStyle", XSD::QName.new(nil, "Style")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::SimpleLineSymbol,
          :schema_type => XSD::QName.new(NsC_93, "SimpleLineSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "LineSymbol"),
          :schema_element => [
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["width", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Width")]],
            ["style", ["ESRI::Soap::MapServer::EsriSimpleLineStyle", XSD::QName.new(nil, "Style")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::SimpleMarkerSymbol,
          :schema_type => XSD::QName.new(NsC_93, "SimpleMarkerSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "MarkerSymbol"),
          :schema_element => [
            ["angle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Angle")]],
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["size", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Size")]],
            ["xOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOffset")]],
            ["yOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOffset")]],
            ["outline", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Outline")]],
            ["outlineSize", ["SOAP::SOAPDouble", XSD::QName.new(nil, "OutlineSize")]],
            ["outlineColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "OutlineColor")]],
            ["style", ["ESRI::Soap::MapServer::EsriSimpleMarkerStyle", XSD::QName.new(nil, "Style")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::TextSymbol,
          :schema_type => XSD::QName.new(NsC_93, "TextSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "Symbol"),
          :schema_element => [
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["breakCharIndex", ["SOAP::SOAPInt", XSD::QName.new(nil, "BreakCharIndex")]],
            ["verticalAlignment", ["ESRI::Soap::MapServer::EsriTextVerticalAlignment", XSD::QName.new(nil, "VerticalAlignment")]],
            ["horizontalAlignment", ["ESRI::Soap::MapServer::EsriTextHorizontalAlignment", XSD::QName.new(nil, "HorizontalAlignment")]],
            ["clip", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Clip")]],
            ["rightToLeft", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RightToLeft")]],
            ["angle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Angle")]],
            ["xOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOffset")]],
            ["yOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOffset")]],
            ["shadowColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "ShadowColor")], [0, 1]],
            ["shadowXOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ShadowXOffset")]],
            ["shadowYOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ShadowYOffset")]],
            ["textPosition", ["ESRI::Soap::MapServer::EsriTextPosition", XSD::QName.new(nil, "TextPosition")]],
            ["textCase", ["ESRI::Soap::MapServer::EsriTextCase", XSD::QName.new(nil, "TextCase")]],
            ["characterSpacing", ["SOAP::SOAPDouble", XSD::QName.new(nil, "CharacterSpacing")]],
            ["characterWidth", ["SOAP::SOAPDouble", XSD::QName.new(nil, "CharacterWidth")]],
            ["wordSpacing", ["SOAP::SOAPDouble", XSD::QName.new(nil, "WordSpacing")]],
            ["kerning", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Kerning")]],
            ["leading", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Leading")]],
            ["textDirection", ["ESRI::Soap::MapServer::EsriTextDirection", XSD::QName.new(nil, "TextDirection")]],
            ["flipAngle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "FlipAngle")]],
            ["typeSetting", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "TypeSetting")]],
            ["textPathClass", ["SOAP::SOAPString", XSD::QName.new(nil, "TextPathClass")], [0, 1]],
            ["fillSymbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "FillSymbol")], [0, 1]],
            ["text", ["SOAP::SOAPString", XSD::QName.new(nil, "Text")]],
            ["size", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Size")]],
            ["maskStyle", ["ESRI::Soap::MapServer::EsriMaskStyle", XSD::QName.new(nil, "MaskStyle")]],
            ["maskSize", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MaskSize")]],
            ["maskSymbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "MaskSymbol")], [0, 1]],
            ["fontName", ["SOAP::SOAPString", XSD::QName.new(nil, "FontName")], [0, 1]],
            ["fontItalic", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FontItalic")], [0, 1]],
            ["fontUnderline", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FontUnderline")], [0, 1]],
            ["fontStrikethrough", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FontStrikethrough")], [0, 1]],
            ["fontWeight", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontWeight")], [0, 1]],
            ["fontCharset", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontCharset")], [0, 1]],
            ["fontSizeHi", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontSizeHi")], [0, 1]],
            ["fontSizeLo", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontSizeLo")], [0, 1]],
            ["textParserClass", ["SOAP::SOAPString", XSD::QName.new(nil, "TextParserClass")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::CharacterMarkerSymbol,
          :schema_type => XSD::QName.new(NsC_93, "CharacterMarkerSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "CartographicMarkerSymbol"),
          :schema_element => [
            ["angle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Angle")]],
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["size", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Size")]],
            ["xOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOffset")]],
            ["yOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOffset")]],
            ["xScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XScale")]],
            ["yScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YScale")]],
            ["characterIndex", ["SOAP::SOAPInt", XSD::QName.new(nil, "CharacterIndex")]],
            ["fontName", ["SOAP::SOAPString", XSD::QName.new(nil, "FontName")], [0, 1]],
            ["fontItalic", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FontItalic")], [0, 1]],
            ["fontUnderline", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FontUnderline")], [0, 1]],
            ["fontStrikethrough", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FontStrikethrough")], [0, 1]],
            ["fontWeight", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontWeight")], [0, 1]],
            ["fontCharset", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontCharset")], [0, 1]],
            ["fontSizeHi", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontSizeHi")], [0, 1]],
            ["fontSizeLo", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontSizeLo")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::PictureMarkerSymbol,
          :schema_type => XSD::QName.new(NsC_93, "PictureMarkerSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "CartographicMarkerSymbol"),
          :schema_element => [
            ["angle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Angle")]],
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["size", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Size")]],
            ["xOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOffset")]],
            ["yOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOffset")]],
            ["xScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XScale")]],
            ["yScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YScale")]],
            ["bgColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "BgColor")], [0, 1]],
            ["bitmapTransColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "BitmapTransColor")], [0, 1]],
            ["picture", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Picture")], [0, 1]],
            ["fgColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "FgColor")], [0, 1]],
            ["swap1BitColor", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Swap1BitColor")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::PictureFillSymbol,
          :schema_type => XSD::QName.new(NsC_93, "PictureFillSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "FillSymbol"),
          :schema_element => [
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["outline", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "Outline")], [0, 1]],
            ["picture", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Picture")]],
            ["bgColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "BgColor")], [0, 1]],
            ["fgColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "FgColor")], [0, 1]],
            ["bitmapTransColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "BitmapTransColor")], [0, 1]],
            ["xSeparation", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XSeparation")], [0, 1]],
            ["ySeparation", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YSeparation")], [0, 1]],
            ["swap1BitColor", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Swap1BitColor")], [0, 1]],
            ["angle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Angle")], [0, 1]],
            ["xOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOffset")], [0, 1]],
            ["yOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOffset")], [0, 1]],
            ["xScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XScale")], [0, 1]],
            ["yScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YScale")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::XMLBinarySymbol,
          :schema_type => XSD::QName.new(NsC_93, "XMLBinarySymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "Symbol"),
          :schema_element => [
            ["data", ["ESRI::Soap::MapServer::XMLPersistedObject", XSD::QName.new(nil, "Data")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::XMLBinaryFillSymbol,
          :schema_type => XSD::QName.new(NsC_93, "XMLBinaryFillSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "FillSymbol"),
          :schema_element => [
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["outline", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "Outline")], [0, 1]],
            ["data", ["ESRI::Soap::MapServer::XMLPersistedObject", XSD::QName.new(nil, "Data")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::GeometryDef,
          :schema_type => XSD::QName.new(NsC_93, "GeometryDef"),
          :schema_element => [
            ["avgNumPoints", ["SOAP::SOAPInt", XSD::QName.new(nil, "AvgNumPoints")]],
            ["geometryType", ["ESRI::Soap::MapServer::EsriGeometryType", XSD::QName.new(nil, "GeometryType")]],
            ["hasM", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasM")]],
            ["hasZ", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasZ")]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")]],
            ["gridSize0", ["SOAP::SOAPDouble", XSD::QName.new(nil, "GridSize0")], [0, 1]],
            ["gridSize1", ["SOAP::SOAPDouble", XSD::QName.new(nil, "GridSize1")], [0, 1]],
            ["gridSize2", ["SOAP::SOAPDouble", XSD::QName.new(nil, "GridSize2")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::Field,
          :schema_type => XSD::QName.new(NsC_93, "Field"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["type", ["ESRI::Soap::MapServer::EsriFieldType", XSD::QName.new(nil, "Type")]],
            ["isNullable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsNullable")]],
            ["length", ["SOAP::SOAPInt", XSD::QName.new(nil, "Length")]],
            ["precision", ["SOAP::SOAPInt", XSD::QName.new(nil, "Precision")]],
            ["scale", ["SOAP::SOAPInt", XSD::QName.new(nil, "Scale")]],
            ["required", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Required")], [0, 1]],
            ["editable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Editable")], [0, 1]],
            ["domainFixed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DomainFixed")], [0, 1]],
            ["geometryDef", ["ESRI::Soap::MapServer::GeometryDef", XSD::QName.new(nil, "GeometryDef")], [0, 1]],
            ["aliasName", ["SOAP::SOAPString", XSD::QName.new(nil, "AliasName")], [0, 1]],
            ["modelName", ["SOAP::SOAPString", XSD::QName.new(nil, "ModelName")], [0, 1]],
            ["defaultValue", [nil, XSD::QName.new(nil, "DefaultValue")], [0, 1]],
            ["domain", ["ESRI::Soap::MapServer::Domain", XSD::QName.new(nil, "Domain")], [0, 1]],
            ["rasterDef", ["ESRI::Soap::MapServer::RasterDef", XSD::QName.new(nil, "RasterDef")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfField,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfField"),
          :schema_element => [
            ["field", ["ESRI::Soap::MapServer::Field[]", XSD::QName.new(nil, "Field")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::Fields,
          :schema_type => XSD::QName.new(NsC_93, "Fields"),
          :schema_element => [
            ["fieldArray", ["ESRI::Soap::MapServer::ArrayOfField", XSD::QName.new(nil, "FieldArray")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfValue,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfValue"),
          :schema_element => [
            ["value", ["[]", XSD::QName.new(nil, "Value")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::Record,
          :schema_type => XSD::QName.new(NsC_93, "Record"),
          :schema_element => [
            ["values", ["ESRI::Soap::MapServer::ArrayOfValue", XSD::QName.new(nil, "Values")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfRecord,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfRecord"),
          :schema_element => [
            ["record", ["ESRI::Soap::MapServer::Record[]", XSD::QName.new(nil, "Record")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::RecordSet,
          :schema_type => XSD::QName.new(NsC_93, "RecordSet"),
          :schema_element => [
            ["fields", ["ESRI::Soap::MapServer::Fields", XSD::QName.new(nil, "Fields")]],
            ["records", ["ESRI::Soap::MapServer::ArrayOfRecord", XSD::QName.new(nil, "Records")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::FIDSet,
          :schema_type => XSD::QName.new(NsC_93, "FIDSet"),
          :schema_element => [
            ["fIDArray", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "FIDArray")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::QueryFilter,
          :schema_type => XSD::QName.new(NsC_93, "QueryFilter"),
          :schema_element => [
            ["subFields", ["SOAP::SOAPString", XSD::QName.new(nil, "SubFields")], [0, 1]],
            ["whereClause", ["SOAP::SOAPString", XSD::QName.new(nil, "WhereClause")]],
            ["spatialReferenceFieldName", ["SOAP::SOAPString", XSD::QName.new(nil, "SpatialReferenceFieldName")], [0, 1]],
            ["resolution", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Resolution")]],
            ["outputSpatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "OutputSpatialReference")], [0, 1]],
            ["fIDSet", ["ESRI::Soap::MapServer::FIDSet", XSD::QName.new(nil, "FIDSet")], [0, 1]],
            ["postfixClause", ["SOAP::SOAPString", XSD::QName.new(nil, "PostfixClause")], [0, 1]],
            ["filterDefs", ["ESRI::Soap::MapServer::ArrayOfFilterDef", XSD::QName.new(nil, "FilterDefs")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::SpatialFilter,
          :schema_type => XSD::QName.new(NsC_93, "SpatialFilter"),
          :schema_basetype => XSD::QName.new(NsC_93, "QueryFilter"),
          :schema_element => [
            ["subFields", ["SOAP::SOAPString", XSD::QName.new(nil, "SubFields")], [0, 1]],
            ["whereClause", ["SOAP::SOAPString", XSD::QName.new(nil, "WhereClause")]],
            ["spatialReferenceFieldName", ["SOAP::SOAPString", XSD::QName.new(nil, "SpatialReferenceFieldName")], [0, 1]],
            ["resolution", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Resolution")]],
            ["outputSpatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "OutputSpatialReference")], [0, 1]],
            ["fIDSet", ["ESRI::Soap::MapServer::FIDSet", XSD::QName.new(nil, "FIDSet")], [0, 1]],
            ["postfixClause", ["SOAP::SOAPString", XSD::QName.new(nil, "PostfixClause")], [0, 1]],
            ["filterDefs", ["ESRI::Soap::MapServer::ArrayOfFilterDef", XSD::QName.new(nil, "FilterDefs")], [0, 1]],
            ["searchOrder", ["ESRI::Soap::MapServer::EsriSearchOrder", XSD::QName.new(nil, "SearchOrder")]],
            ["spatialRel", ["ESRI::Soap::MapServer::EsriSpatialRelEnum", XSD::QName.new(nil, "SpatialRel")]],
            ["spatialRelDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SpatialRelDescription")]],
            ["filterGeometry", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "FilterGeometry")]],
            ["geometryFieldName", ["SOAP::SOAPString", XSD::QName.new(nil, "GeometryFieldName")]],
            ["filterOwnsGeometry", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FilterOwnsGeometry")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::XMLFilterDef,
          :schema_type => XSD::QName.new(NsC_93, "XMLFilterDef"),
          :schema_basetype => XSD::QName.new(NsC_93, "FilterDef"),
          :schema_element => [
            ["fieldName", ["SOAP::SOAPString", XSD::QName.new(nil, "FieldName")]],
            ["expression", ["SOAP::SOAPString", XSD::QName.new(nil, "Expression")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfFilterDef,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfFilterDef"),
          :schema_element => [
            ["filterDef", ["ESRI::Soap::MapServer::FilterDef[]", XSD::QName.new(nil, "FilterDef")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::RangeDomain,
          :schema_type => XSD::QName.new(NsC_93, "RangeDomain"),
          :schema_basetype => XSD::QName.new(NsC_93, "Domain"),
          :schema_element => [
            ["domainName", ["SOAP::SOAPString", XSD::QName.new(nil, "DomainName")]],
            ["fieldType", ["ESRI::Soap::MapServer::EsriFieldType", XSD::QName.new(nil, "FieldType")]],
            ["mergePolicy", ["ESRI::Soap::MapServer::EsriMergePolicyType", XSD::QName.new(nil, "MergePolicy")]],
            ["splitPolicy", ["ESRI::Soap::MapServer::EsriSplitPolicyType", XSD::QName.new(nil, "SplitPolicy")]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
            ["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "Owner")], [0, 1]],
            ["maxValue", [nil, XSD::QName.new(nil, "MaxValue")]],
            ["minValue", [nil, XSD::QName.new(nil, "MinValue")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::CodedValue,
          :schema_type => XSD::QName.new(NsC_93, "CodedValue"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["code", [nil, XSD::QName.new(nil, "Code")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfCodedValue,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfCodedValue"),
          :schema_element => [
            ["codedValue", ["ESRI::Soap::MapServer::CodedValue[]", XSD::QName.new(nil, "CodedValue")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::CodedValueDomain,
          :schema_type => XSD::QName.new(NsC_93, "CodedValueDomain"),
          :schema_basetype => XSD::QName.new(NsC_93, "Domain"),
          :schema_element => [
            ["domainName", ["SOAP::SOAPString", XSD::QName.new(nil, "DomainName")]],
            ["fieldType", ["ESRI::Soap::MapServer::EsriFieldType", XSD::QName.new(nil, "FieldType")]],
            ["mergePolicy", ["ESRI::Soap::MapServer::EsriMergePolicyType", XSD::QName.new(nil, "MergePolicy")]],
            ["splitPolicy", ["ESRI::Soap::MapServer::EsriSplitPolicyType", XSD::QName.new(nil, "SplitPolicy")]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
            ["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "Owner")], [0, 1]],
            ["codedValues", ["ESRI::Soap::MapServer::ArrayOfCodedValue", XSD::QName.new(nil, "CodedValues")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::BitMaskCodedValueDomain,
          :schema_type => XSD::QName.new(NsC_93, "BitMaskCodedValueDomain"),
          :schema_basetype => XSD::QName.new(NsC_93, "CodedValueDomain"),
          :schema_element => [
            ["domainName", ["SOAP::SOAPString", XSD::QName.new(nil, "DomainName")]],
            ["fieldType", ["ESRI::Soap::MapServer::EsriFieldType", XSD::QName.new(nil, "FieldType")]],
            ["mergePolicy", ["ESRI::Soap::MapServer::EsriMergePolicyType", XSD::QName.new(nil, "MergePolicy")]],
            ["splitPolicy", ["ESRI::Soap::MapServer::EsriSplitPolicyType", XSD::QName.new(nil, "SplitPolicy")]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
            ["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "Owner")], [0, 1]],
            ["codedValues", ["ESRI::Soap::MapServer::ArrayOfCodedValue", XSD::QName.new(nil, "CodedValues")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::RasterDef,
          :schema_type => XSD::QName.new(NsC_93, "RasterDef"),
          :schema_element => [
            ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
            ["isByRef", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsByRef")], [0, 1]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::GeometryResultOptions,
          :schema_type => XSD::QName.new(NsC_93, "GeometryResultOptions"),
          :schema_element => [
            ["densifyGeometries", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DensifyGeometries")], [0, 1]],
            ["maximumSegmentLength", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MaximumSegmentLength")], [0, 1]],
            ["maximumDeviation", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MaximumDeviation")], [0, 1]],
            ["generalizeGeometries", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "GeneralizeGeometries")], [0, 1]],
            ["maximumAllowableOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MaximumAllowableOffset")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::PropertySetProperty,
          :schema_type => XSD::QName.new(NsC_93, "PropertySetProperty"),
          :schema_element => [
            ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "Key")]],
            ["value", [nil, XSD::QName.new(nil, "Value")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfPropertySetProperty,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfPropertySetProperty"),
          :schema_element => [
            ["propertySetProperty", ["ESRI::Soap::MapServer::PropertySetProperty[]", XSD::QName.new(nil, "PropertySetProperty")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::PropertySet,
          :schema_type => XSD::QName.new(NsC_93, "PropertySet"),
          :schema_element => [
            ["propertyArray", ["ESRI::Soap::MapServer::ArrayOfPropertySetProperty", XSD::QName.new(nil, "PropertyArray")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::XMLPersistedObject,
          :schema_type => XSD::QName.new(NsC_93, "XMLPersistedObject"),
          :schema_element => [
            ["bytes", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Bytes")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::NumericFormat,
          :schema_type => XSD::QName.new(NsC_93, "NumericFormat"),
          :schema_element => [
            ["roundingOption", ["ESRI::Soap::MapServer::EsriRoundingOptionEnum", XSD::QName.new(nil, "RoundingOption")], [0, 1]],
            ["roundingValue", ["SOAP::SOAPInt", XSD::QName.new(nil, "RoundingValue")], [0, 1]],
            ["alignmentOption", ["ESRI::Soap::MapServer::EsriNumericAlignmentEnum", XSD::QName.new(nil, "AlignmentOption")], [0, 1]],
            ["alignmentWidth", ["SOAP::SOAPInt", XSD::QName.new(nil, "AlignmentWidth")], [0, 1]],
            ["useSeparator", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "UseSeparator")], [0, 1]],
            ["zeroPad", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ZeroPad")], [0, 1]],
            ["showPlus", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ShowPlus")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfInt,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfInt"),
          :schema_element => [
            ["int", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "Int")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfString,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfString"),
          :schema_element => [
            ["string", ["SOAP::SOAPString[]", XSD::QName.new(nil, "String")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::GeoTransformation,
          :schema_type => XSD::QName.new(NsC_93, "GeoTransformation"),
          :schema_element => [
            ["wKT", ["SOAP::SOAPString", XSD::QName.new(nil, "WKT")], [0, 1]],
            ["wKID", ["SOAP::SOAPInt", XSD::QName.new(nil, "WKID")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ProjectedCoordinateSystem,
          :schema_type => XSD::QName.new(NsC_93, "ProjectedCoordinateSystem"),
          :schema_basetype => XSD::QName.new(NsC_93, "SpatialReference"),
          :schema_element => [
            ["wKT", ["SOAP::SOAPString", XSD::QName.new(nil, "WKT")], [0, 1]],
            ["xOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOrigin")], [0, 1]],
            ["yOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOrigin")], [0, 1]],
            ["xYScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XYScale")], [0, 1]],
            ["zOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZOrigin")], [0, 1]],
            ["zScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZScale")], [0, 1]],
            ["mOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MOrigin")], [0, 1]],
            ["mScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MScale")], [0, 1]],
            ["xYTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XYTolerance")], [0, 1]],
            ["zTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZTolerance")], [0, 1]],
            ["mTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MTolerance")], [0, 1]],
            ["highPrecision", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HighPrecision")], [0, 1]],
            ["leftLongitude", ["SOAP::SOAPDouble", XSD::QName.new(nil, "LeftLongitude")], [0, 1]],
            ["wKID", ["SOAP::SOAPInt", XSD::QName.new(nil, "WKID")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::GeographicCoordinateSystem,
          :schema_type => XSD::QName.new(NsC_93, "GeographicCoordinateSystem"),
          :schema_basetype => XSD::QName.new(NsC_93, "SpatialReference"),
          :schema_element => [
            ["wKT", ["SOAP::SOAPString", XSD::QName.new(nil, "WKT")], [0, 1]],
            ["xOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOrigin")], [0, 1]],
            ["yOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOrigin")], [0, 1]],
            ["xYScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XYScale")], [0, 1]],
            ["zOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZOrigin")], [0, 1]],
            ["zScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZScale")], [0, 1]],
            ["mOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MOrigin")], [0, 1]],
            ["mScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MScale")], [0, 1]],
            ["xYTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XYTolerance")], [0, 1]],
            ["zTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZTolerance")], [0, 1]],
            ["mTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MTolerance")], [0, 1]],
            ["highPrecision", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HighPrecision")], [0, 1]],
            ["leftLongitude", ["SOAP::SOAPDouble", XSD::QName.new(nil, "LeftLongitude")], [0, 1]],
            ["wKID", ["SOAP::SOAPInt", XSD::QName.new(nil, "WKID")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::UnknownCoordinateSystem,
          :schema_type => XSD::QName.new(NsC_93, "UnknownCoordinateSystem"),
          :schema_basetype => XSD::QName.new(NsC_93, "SpatialReference"),
          :schema_element => [
            ["wKT", ["SOAP::SOAPString", XSD::QName.new(nil, "WKT")], [0, 1]],
            ["xOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOrigin")], [0, 1]],
            ["yOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOrigin")], [0, 1]],
            ["xYScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XYScale")], [0, 1]],
            ["zOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZOrigin")], [0, 1]],
            ["zScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZScale")], [0, 1]],
            ["mOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MOrigin")], [0, 1]],
            ["mScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MScale")], [0, 1]],
            ["xYTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XYTolerance")], [0, 1]],
            ["zTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZTolerance")], [0, 1]],
            ["mTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MTolerance")], [0, 1]],
            ["highPrecision", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HighPrecision")], [0, 1]],
            ["leftLongitude", ["SOAP::SOAPDouble", XSD::QName.new(nil, "LeftLongitude")], [0, 1]],
            ["wKID", ["SOAP::SOAPInt", XSD::QName.new(nil, "WKID")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::Geometry,
          :schema_type => XSD::QName.new(NsC_93, "Geometry"),
          :schema_element => []
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EnvelopeN,
          :schema_type => XSD::QName.new(NsC_93, "EnvelopeN"),
          :schema_basetype => XSD::QName.new(NsC_93, "Envelope"),
          :schema_element => [
            ["xMin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XMin")]],
            ["yMin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YMin")]],
            ["xMax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XMax")]],
            ["yMax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YMax")]],
            ["zMin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZMin")], [0, 1]],
            ["zMax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZMax")], [0, 1]],
            ["mMin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MMin")], [0, 1]],
            ["mMax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MMax")], [0, 1]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EnvelopeB,
          :schema_type => XSD::QName.new(NsC_93, "EnvelopeB"),
          :schema_basetype => XSD::QName.new(NsC_93, "Envelope"),
          :schema_element => [
            ["bytes", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Bytes")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::PointN,
          :schema_type => XSD::QName.new(NsC_93, "PointN"),
          :schema_basetype => XSD::QName.new(NsC_93, "Point"),
          :schema_element => [
            ["x", ["SOAP::SOAPDouble", XSD::QName.new(nil, "X")]],
            ["y", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Y")]],
            ["m", ["SOAP::SOAPDouble", XSD::QName.new(nil, "M")], [0, 1]],
            ["z", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Z")], [0, 1]],
            ["iD", ["SOAP::SOAPInt", XSD::QName.new(nil, "ID")], [0, 1]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::PointB,
          :schema_type => XSD::QName.new(NsC_93, "PointB"),
          :schema_basetype => XSD::QName.new(NsC_93, "Point"),
          :schema_element => [
            ["bytes", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Bytes")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MultipointB,
          :schema_type => XSD::QName.new(NsC_93, "MultipointB"),
          :schema_basetype => XSD::QName.new(NsC_93, "Multipoint"),
          :schema_element => [
            ["bytes", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Bytes")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MultipointN,
          :schema_type => XSD::QName.new(NsC_93, "MultipointN"),
          :schema_basetype => XSD::QName.new(NsC_93, "Multipoint"),
          :schema_element => [
            ["hasID", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasID")]],
            ["hasZ", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasZ")]],
            ["hasM", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasM")]],
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["pointArray", ["ESRI::Soap::MapServer::ArrayOfPoint", XSD::QName.new(nil, "PointArray")], [0, 1]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::Line,
          :schema_type => XSD::QName.new(NsC_93, "Line"),
          :schema_basetype => XSD::QName.new(NsC_93, "Segment"),
          :schema_element => [
            ["fromPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "FromPoint")]],
            ["toPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "ToPoint")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EllipticArc,
          :schema_type => XSD::QName.new(NsC_93, "EllipticArc"),
          :schema_basetype => XSD::QName.new(NsC_93, "Segment"),
          :schema_element => [
            ["fromPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "FromPoint")]],
            ["toPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "ToPoint")]],
            ["ellipseStd", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "EllipseStd")]],
            ["centerPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "CenterPoint")]],
            ["rotation", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Rotation")]],
            ["minorMajorRatio", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MinorMajorRatio")]],
            ["isCounterClockWise", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsCounterClockWise")]],
            ["isMinor", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsMinor")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::CircularArc,
          :schema_type => XSD::QName.new(NsC_93, "CircularArc"),
          :schema_basetype => XSD::QName.new(NsC_93, "Segment"),
          :schema_element => [
            ["fromPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "FromPoint")]],
            ["toPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "ToPoint")]],
            ["centerPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "CenterPoint")]],
            ["fromAngle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "FromAngle")], [0, 1]],
            ["toAngle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ToAngle")], [0, 1]],
            ["isCounterClockwise", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsCounterClockwise")]],
            ["isMinor", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsMinor")]],
            ["isLine", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsLine")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::BezierCurve,
          :schema_type => XSD::QName.new(NsC_93, "BezierCurve"),
          :schema_basetype => XSD::QName.new(NsC_93, "Segment"),
          :schema_element => [
            ["fromPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "FromPoint")]],
            ["toPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "ToPoint")]],
            ["degree", ["SOAP::SOAPInt", XSD::QName.new(nil, "Degree")]],
            ["controlPointArray", ["ESRI::Soap::MapServer::ArrayOfPoint", XSD::QName.new(nil, "ControlPointArray")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::Path,
          :schema_type => XSD::QName.new(NsC_93, "Path"),
          :schema_basetype => XSD::QName.new(NsC_93, "Curve"),
          :schema_element => [
            ["pointArray", ["ESRI::Soap::MapServer::ArrayOfPoint", XSD::QName.new(nil, "PointArray")], [0, 1]],
            ["segmentArray", ["ESRI::Soap::MapServer::ArrayOfSegment", XSD::QName.new(nil, "SegmentArray")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::Ring,
          :schema_type => XSD::QName.new(NsC_93, "Ring"),
          :schema_basetype => XSD::QName.new(NsC_93, "Path"),
          :schema_element => [
            ["pointArray", ["ESRI::Soap::MapServer::ArrayOfPoint", XSD::QName.new(nil, "PointArray")], [0, 1]],
            ["segmentArray", ["ESRI::Soap::MapServer::ArrayOfSegment", XSD::QName.new(nil, "SegmentArray")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::PolygonN,
          :schema_type => XSD::QName.new(NsC_93, "PolygonN"),
          :schema_basetype => XSD::QName.new(NsC_93, "Polygon"),
          :schema_element => [
            ["hasID", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasID")]],
            ["hasZ", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasZ")]],
            ["hasM", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasM")]],
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["ringArray", ["ESRI::Soap::MapServer::ArrayOfRing", XSD::QName.new(nil, "RingArray")]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::PolygonB,
          :schema_type => XSD::QName.new(NsC_93, "PolygonB"),
          :schema_basetype => XSD::QName.new(NsC_93, "Polygon"),
          :schema_element => [
            ["bytes", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Bytes")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::PolylineN,
          :schema_type => XSD::QName.new(NsC_93, "PolylineN"),
          :schema_basetype => XSD::QName.new(NsC_93, "Polyline"),
          :schema_element => [
            ["hasID", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasID")]],
            ["hasZ", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasZ")]],
            ["hasM", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasM")]],
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["pathArray", ["ESRI::Soap::MapServer::ArrayOfPath", XSD::QName.new(nil, "PathArray")]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::PolylineB,
          :schema_type => XSD::QName.new(NsC_93, "PolylineB"),
          :schema_basetype => XSD::QName.new(NsC_93, "Polyline"),
          :schema_element => [
            ["bytes", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Bytes")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfPoint,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfPoint"),
          :schema_element => [
            ["point", ["ESRI::Soap::MapServer::Point[]", XSD::QName.new(nil, "Point")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfPath,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfPath"),
          :schema_element => [
            ["path", ["ESRI::Soap::MapServer::Path[]", XSD::QName.new(nil, "Path")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfRing,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfRing"),
          :schema_element => [
            ["ring", ["ESRI::Soap::MapServer::Ring[]", XSD::QName.new(nil, "Ring")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfSegment,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfSegment"),
          :schema_element => [
            ["segment", ["ESRI::Soap::MapServer::Segment[]", XSD::QName.new(nil, "Segment")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MultiPatchB,
          :schema_type => XSD::QName.new(NsC_93, "MultiPatchB"),
          :schema_basetype => XSD::QName.new(NsC_93, "MultiPatch"),
          :schema_element => [
            ["bytes", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Bytes")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::MultiPatchN,
          :schema_type => XSD::QName.new(NsC_93, "MultiPatchN"),
          :schema_basetype => XSD::QName.new(NsC_93, "MultiPatch"),
          :schema_element => [
            ["hasID", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasID")]],
            ["hasZ", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasZ")]],
            ["hasM", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasM")]],
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")]],
            ["surfacePatchArray", ["ESRI::Soap::MapServer::ArrayOfSurfacePatch", XSD::QName.new(nil, "SurfacePatchArray")]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfSurfacePatch,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfSurfacePatch"),
          :schema_element => [
            ["surfacePatch", ["ESRI::Soap::MapServer::Geometry[]", XSD::QName.new(nil, "SurfacePatch")], [0, nil]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::TriangleFan,
          :schema_type => XSD::QName.new(NsC_93, "TriangleFan"),
          :schema_basetype => XSD::QName.new(NsC_93, "Geometry"),
          :schema_element => [
            ["pointArray", ["ESRI::Soap::MapServer::ArrayOfPoint", XSD::QName.new(nil, "PointArray")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::TriangleStrip,
          :schema_type => XSD::QName.new(NsC_93, "TriangleStrip"),
          :schema_basetype => XSD::QName.new(NsC_93, "Geometry"),
          :schema_element => [
            ["pointArray", ["ESRI::Soap::MapServer::ArrayOfPoint", XSD::QName.new(nil, "PointArray")], [0, 1]]
          ]
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriIdentifyOption,
          :schema_type => XSD::QName.new(NsC_93, "esriIdentifyOption")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriFindOption,
          :schema_type => XSD::QName.new(NsC_93, "esriFindOption")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriImageFormat,
          :schema_type => XSD::QName.new(NsC_93, "esriImageFormat")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriScaleBarPos,
          :schema_type => XSD::QName.new(NsC_93, "esriScaleBarPos")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriVertPosEnum,
          :schema_type => XSD::QName.new(NsC_93, "esriVertPosEnum")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriScaleBarFrequency,
          :schema_type => XSD::QName.new(NsC_93, "esriScaleBarFrequency")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriScaleBarResizeHint,
          :schema_type => XSD::QName.new(NsC_93, "esriScaleBarResizeHint")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriImageReturnType,
          :schema_type => XSD::QName.new(NsC_93, "esriImageReturnType")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriCachedMapServiceType,
          :schema_type => XSD::QName.new(NsC_93, "esriCachedMapServiceType")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriQueryResultFormat,
          :schema_type => XSD::QName.new(NsC_93, "esriQueryResultFormat")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriSimpleFillStyle,
          :schema_type => XSD::QName.new(NsC_93, "esriSimpleFillStyle")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriSimpleLineStyle,
          :schema_type => XSD::QName.new(NsC_93, "esriSimpleLineStyle")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriSimpleMarkerStyle,
          :schema_type => XSD::QName.new(NsC_93, "esriSimpleMarkerStyle")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriTextHorizontalAlignment,
          :schema_type => XSD::QName.new(NsC_93, "esriTextHorizontalAlignment")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriTextVerticalAlignment,
          :schema_type => XSD::QName.new(NsC_93, "esriTextVerticalAlignment")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriTextPosition,
          :schema_type => XSD::QName.new(NsC_93, "esriTextPosition")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriTextCase,
          :schema_type => XSD::QName.new(NsC_93, "esriTextCase")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriTextDirection,
          :schema_type => XSD::QName.new(NsC_93, "esriTextDirection")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriMaskStyle,
          :schema_type => XSD::QName.new(NsC_93, "esriMaskStyle")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriFieldType,
          :schema_type => XSD::QName.new(NsC_93, "esriFieldType")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriMergePolicyType,
          :schema_type => XSD::QName.new(NsC_93, "esriMergePolicyType")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriSplitPolicyType,
          :schema_type => XSD::QName.new(NsC_93, "esriSplitPolicyType")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriSearchOrder,
          :schema_type => XSD::QName.new(NsC_93, "esriSearchOrder")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriSpatialRelEnum,
          :schema_type => XSD::QName.new(NsC_93, "esriSpatialRelEnum")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriUnits,
          :schema_type => XSD::QName.new(NsC_93, "esriUnits")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriRoundingOptionEnum,
          :schema_type => XSD::QName.new(NsC_93, "esriRoundingOptionEnum")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriNumericAlignmentEnum,
          :schema_type => XSD::QName.new(NsC_93, "esriNumericAlignmentEnum")
        )

        EncodedRegistry.register(
          :class => ESRI::Soap::MapServer::EsriGeometryType,
          :schema_type => XSD::QName.new(NsC_93, "esriGeometryType")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::TileCacheInfo,
          :schema_type => XSD::QName.new(NsC_93, "TileCacheInfo"),
          :schema_element => [
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]],
            ["tileOrigin", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "TileOrigin")], [0, 1]],
            ["tileCols", ["SOAP::SOAPInt", XSD::QName.new(nil, "TileCols")]],
            ["tileRows", ["SOAP::SOAPInt", XSD::QName.new(nil, "TileRows")]],
            ["dPI", ["SOAP::SOAPInt", XSD::QName.new(nil, "DPI")]],
            ["lODInfos", ["ESRI::Soap::MapServer::ArrayOfLODInfo", XSD::QName.new(nil, "LODInfos")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::LODInfo,
          :schema_type => XSD::QName.new(NsC_93, "LODInfo"),
          :schema_element => [
            ["levelID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LevelID")]],
            ["scale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Scale")]],
            ["resolution", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Resolution")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfLODInfo,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfLODInfo"),
          :schema_element => [
            ["lODInfo", ["ESRI::Soap::MapServer::LODInfo[]", XSD::QName.new(nil, "LODInfo")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::AreaPatch,
          :schema_type => XSD::QName.new(NsC_93, "AreaPatch"),
          :schema_basetype => XSD::QName.new(NsC_93, "Patch"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["preserveAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PreserveAspectRatio")], [0, 1]],
            ["geometry", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Geometry")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfGraphicElement,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfGraphicElement"),
          :schema_element => [
            ["graphicElement", ["ESRI::Soap::MapServer::GraphicElement[]", XSD::QName.new(nil, "GraphicElement")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfLayerDescription,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfLayerDescription"),
          :schema_element => [
            ["layerDescription", ["ESRI::Soap::MapServer::LayerDescription[]", XSD::QName.new(nil, "LayerDescription")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapLayerInfo,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapLayerInfo"),
          :schema_element => [
            ["mapLayerInfo", ["ESRI::Soap::MapServer::MapLayerInfo[]", XSD::QName.new(nil, "MapLayerInfo")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerBookmark,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerBookmark"),
          :schema_element => [
            ["mapServerBookmark", ["ESRI::Soap::MapServer::MapServerBookmark[]", XSD::QName.new(nil, "MapServerBookmark")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerFindResult,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerFindResult"),
          :schema_element => [
            ["mapServerFindResult", ["ESRI::Soap::MapServer::MapServerFindResult[]", XSD::QName.new(nil, "MapServerFindResult")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerHyperlink,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerHyperlink"),
          :schema_element => [
            ["mapServerHyperlink", ["ESRI::Soap::MapServer::MapServerHyperlink[]", XSD::QName.new(nil, "MapServerHyperlink")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerIdentifyResult,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerIdentifyResult"),
          :schema_element => [
            ["mapServerIdentifyResult", ["ESRI::Soap::MapServer::MapServerIdentifyResult[]", XSD::QName.new(nil, "MapServerIdentifyResult")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerLegendClass,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerLegendClass"),
          :schema_element => [
            ["mapServerLegendClass", ["ESRI::Soap::MapServer::MapServerLegendClass[]", XSD::QName.new(nil, "MapServerLegendClass")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerLegendGroup,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerLegendGroup"),
          :schema_element => [
            ["mapServerLegendGroup", ["ESRI::Soap::MapServer::MapServerLegendGroup[]", XSD::QName.new(nil, "MapServerLegendGroup")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerLegendInfo,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerLegendInfo"),
          :schema_element => [
            ["mapServerLegendInfo", ["ESRI::Soap::MapServer::MapServerLegendInfo[]", XSD::QName.new(nil, "MapServerLegendInfo")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerRelationship,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerRelationship"),
          :schema_element => [
            ["mapServerRelationship", ["ESRI::Soap::MapServer::MapServerRelationship[]", XSD::QName.new(nil, "MapServerRelationship")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfMapServerRow,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfMapServerRow"),
          :schema_element => [
            ["mapServerRow", ["ESRI::Soap::MapServer::MapServerRow[]", XSD::QName.new(nil, "MapServerRow")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::CenterAndScale,
          :schema_type => XSD::QName.new(NsC_93, "CenterAndScale"),
          :schema_basetype => XSD::QName.new(NsC_93, "MapArea"),
          :schema_element => [
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["center", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "Center")], [0, 1]],
            ["scale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Scale")]],
            ["dPI", ["SOAP::SOAPDouble", XSD::QName.new(nil, "DPI")], [0, 1]],
            ["devBottom", ["SOAP::SOAPInt", XSD::QName.new(nil, "DevBottom")], [0, 1]],
            ["devLeft", ["SOAP::SOAPInt", XSD::QName.new(nil, "DevLeft")], [0, 1]],
            ["devTop", ["SOAP::SOAPInt", XSD::QName.new(nil, "DevTop")], [0, 1]],
            ["devRight", ["SOAP::SOAPInt", XSD::QName.new(nil, "DevRight")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::CenterAndSize,
          :schema_type => XSD::QName.new(NsC_93, "CenterAndSize"),
          :schema_basetype => XSD::QName.new(NsC_93, "MapArea"),
          :schema_element => [
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["center", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "Center")], [0, 1]],
            ["height", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Height")]],
            ["width", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Width")]],
            ["units", ["SOAP::SOAPString", XSD::QName.new(nil, "Units")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::FeatureExtent,
          :schema_type => XSD::QName.new(NsC_93, "FeatureExtent"),
          :schema_basetype => XSD::QName.new(NsC_93, "MapArea"),
          :schema_element => [
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["defaultScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "DefaultScale")]],
            ["expandRatio", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ExpandRatio")]],
            ["featureIDs", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "FeatureIDs")], [0, 1]],
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ImageDescription,
          :schema_type => XSD::QName.new(NsC_93, "ImageDescription"),
          :schema_element => [
            ["imageType", ["ESRI::Soap::MapServer::ImageType", XSD::QName.new(nil, "ImageType")], [0, 1]],
            ["imageDisplay", ["ESRI::Soap::MapServer::ImageDisplay", XSD::QName.new(nil, "ImageDisplay")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ImageDisplay,
          :schema_type => XSD::QName.new(NsC_93, "ImageDisplay"),
          :schema_element => [
            ["imageHeight", ["SOAP::SOAPInt", XSD::QName.new(nil, "ImageHeight")]],
            ["imageWidth", ["SOAP::SOAPInt", XSD::QName.new(nil, "ImageWidth")]],
            ["imageDPI", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ImageDPI")]],
            ["transparentColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "TransparentColor")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ImageResult,
          :schema_type => XSD::QName.new(NsC_93, "ImageResult"),
          :schema_element => [
            ["imageData", ["SOAP::SOAPBase64", XSD::QName.new(nil, "ImageData")], [0, 1]],
            ["imageURL", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageURL")]],
            ["imageHeight", ["SOAP::SOAPInt", XSD::QName.new(nil, "ImageHeight")]],
            ["imageWidth", ["SOAP::SOAPInt", XSD::QName.new(nil, "ImageWidth")]],
            ["imageDPI", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ImageDPI")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ImageType,
          :schema_type => XSD::QName.new(NsC_93, "ImageType"),
          :schema_element => [
            ["imageFormat", ["ESRI::Soap::MapServer::EsriImageFormat", XSD::QName.new(nil, "ImageFormat")]],
            ["imageReturnType", ["ESRI::Soap::MapServer::EsriImageReturnType", XSD::QName.new(nil, "ImageReturnType")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::LayerDescription,
          :schema_type => XSD::QName.new(NsC_93, "LayerDescription"),
          :schema_element => [
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["visible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Visible")]],
            ["showLabels", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ShowLabels")]],
            ["scaleSymbols", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ScaleSymbols")]],
            ["selectionFeatures", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "SelectionFeatures")], [0, 1]],
            ["selectionColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "SelectionColor")], [0, 1]],
            ["selectionSymbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "SelectionSymbol")], [0, 1]],
            ["setSelectionSymbol", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "SetSelectionSymbol")]],
            ["selectionBufferDistance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "SelectionBufferDistance")]],
            ["showSelectionBuffer", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ShowSelectionBuffer")]],
            ["definitionExpression", ["SOAP::SOAPString", XSD::QName.new(nil, "DefinitionExpression")]],
            ["sourceID", ["SOAP::SOAPString", XSD::QName.new(nil, "SourceID")], [0, 1]],
            ["selectionBufferSymbol", ["ESRI::Soap::MapServer::FillSymbol", XSD::QName.new(nil, "SelectionBufferSymbol")], [0, 1]],
            ["layerResultOptions", ["ESRI::Soap::MapServer::LayerResultOptions", XSD::QName.new(nil, "LayerResultOptions")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::LayerResultOptions,
          :schema_type => XSD::QName.new(NsC_93, "LayerResultOptions"),
          :schema_element => [
            ["includeGeometry", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IncludeGeometry")], [0, 1]],
            ["geometryResultOptions", ["ESRI::Soap::MapServer::GeometryResultOptions", XSD::QName.new(nil, "GeometryResultOptions")], [0, 1]],
            ["returnFieldNamesInResults", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ReturnFieldNamesInResults")], [0, 1]],
            ["formatValuesInResults", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FormatValuesInResults")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::LinePatch,
          :schema_type => XSD::QName.new(NsC_93, "LinePatch"),
          :schema_basetype => XSD::QName.new(NsC_93, "Patch"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["preserveAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PreserveAspectRatio")], [0, 1]],
            ["geometry", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Geometry")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapDescription,
          :schema_type => XSD::QName.new(NsC_93, "MapDescription"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["mapArea", ["ESRI::Soap::MapServer::MapArea", XSD::QName.new(nil, "MapArea")], [0, 1]],
            ["layerDescriptions", ["ESRI::Soap::MapServer::ArrayOfLayerDescription", XSD::QName.new(nil, "LayerDescriptions")], [0, 1]],
            ["rotation", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Rotation")]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]],
            ["transparentColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "TransparentColor")], [0, 1]],
            ["selectionColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "SelectionColor")], [0, 1]],
            ["backgroundSymbol", ["ESRI::Soap::MapServer::FillSymbol", XSD::QName.new(nil, "BackgroundSymbol")], [0, 1]],
            ["customGraphics", ["ESRI::Soap::MapServer::ArrayOfGraphicElement", XSD::QName.new(nil, "CustomGraphics")], [0, 1]],
            ["geoTransformation", ["ESRI::Soap::MapServer::GeoTransformation", XSD::QName.new(nil, "GeoTransformation")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapExtent,
          :schema_type => XSD::QName.new(NsC_93, "MapExtent"),
          :schema_basetype => XSD::QName.new(NsC_93, "MapArea"),
          :schema_element => [
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapImage,
          :schema_type => XSD::QName.new(NsC_93, "MapImage"),
          :schema_element => [
            ["imageData", ["SOAP::SOAPBase64", XSD::QName.new(nil, "ImageData")], [0, 1]],
            ["imageURL", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageURL")]],
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["visibleLayerIDs", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "VisibleLayerIDs")], [0, 1]],
            ["mapScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MapScale")]],
            ["imageHeight", ["SOAP::SOAPInt", XSD::QName.new(nil, "ImageHeight")]],
            ["imageWidth", ["SOAP::SOAPInt", XSD::QName.new(nil, "ImageWidth")]],
            ["imageDPI", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ImageDPI")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapLayerInfo,
          :schema_type => XSD::QName.new(NsC_93, "MapLayerInfo"),
          :schema_element => [
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")]],
            ["layerType", ["SOAP::SOAPString", XSD::QName.new(nil, "LayerType")]],
            ["sourceDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SourceDescription")]],
            ["hasLabels", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasLabels")]],
            ["canSelect", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CanSelect")]],
            ["canScaleSymbols", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CanScaleSymbols")]],
            ["minScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MinScale")]],
            ["maxScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MaxScale")]],
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["hasHyperlinks", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasHyperlinks")]],
            ["hasAttributes", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasAttributes")]],
            ["canIdentify", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CanIdentify")]],
            ["canFind", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CanFind")]],
            ["isFeatureLayer", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsFeatureLayer")]],
            ["fields", ["ESRI::Soap::MapServer::Fields", XSD::QName.new(nil, "Fields")], [0, 1]],
            ["displayField", ["SOAP::SOAPString", XSD::QName.new(nil, "DisplayField")]],
            ["iDField", ["SOAP::SOAPString", XSD::QName.new(nil, "IDField")]],
            ["isComposite", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsComposite")]],
            ["subLayerIDs", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "SubLayerIDs")], [0, 1]],
            ["parentLayerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "ParentLayerID")]],
            ["fieldAliases", ["ESRI::Soap::MapServer::ArrayOfString", XSD::QName.new(nil, "FieldAliases")], [0, 1]],
            ["copyrightText", ["SOAP::SOAPString", XSD::QName.new(nil, "CopyrightText")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerBookmark,
          :schema_type => XSD::QName.new(NsC_93, "MapServerBookmark"),
          :schema_basetype => XSD::QName.new(NsC_93, "MapArea"),
          :schema_element => [
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerFindResult,
          :schema_type => XSD::QName.new(NsC_93, "MapServerFindResult"),
          :schema_element => [
            ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "Value")]],
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["featureID", ["SOAP::SOAPInt", XSD::QName.new(nil, "FeatureID")]],
            ["fieldName", ["SOAP::SOAPString", XSD::QName.new(nil, "FieldName")]],
            ["shape", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Shape")], [0, 1]],
            ["properties", ["ESRI::Soap::MapServer::PropertySet", XSD::QName.new(nil, "Properties")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerHyperlink,
          :schema_type => XSD::QName.new(NsC_93, "MapServerHyperlink"),
          :schema_element => [
            ["location", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Location")], [0, 1]],
            ["uRL", ["SOAP::SOAPString", XSD::QName.new(nil, "URL")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerIdentifyResult,
          :schema_type => XSD::QName.new(NsC_93, "MapServerIdentifyResult"),
          :schema_element => [
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["properties", ["ESRI::Soap::MapServer::PropertySet", XSD::QName.new(nil, "Properties")], [0, 1]],
            ["shape", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Shape")], [0, 1]],
            ["relationships", ["ESRI::Soap::MapServer::ArrayOfMapServerRelationship", XSD::QName.new(nil, "Relationships")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerInfo,
          :schema_type => XSD::QName.new(NsC_93, "MapServerInfo"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")]],
            ["fullExtent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "FullExtent")], [0, 1]],
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]],
            ["mapLayerInfos", ["ESRI::Soap::MapServer::ArrayOfMapLayerInfo", XSD::QName.new(nil, "MapLayerInfos")], [0, 1]],
            ["backgroundColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "BackgroundColor")], [0, 1]],
            ["bookmarks", ["ESRI::Soap::MapServer::ArrayOfMapServerBookmark", XSD::QName.new(nil, "Bookmarks")], [0, 1]],
            ["defaultMapDescription", ["ESRI::Soap::MapServer::MapDescription", XSD::QName.new(nil, "DefaultMapDescription")], [0, 1]],
            ["units", ["ESRI::Soap::MapServer::EsriUnits", XSD::QName.new(nil, "Units")]],
            ["supportedImageReturnTypes", ["ESRI::Soap::MapServer::EsriImageReturnType", XSD::QName.new(nil, "SupportedImageReturnTypes")]],
            ["backgroundSymbol", ["ESRI::Soap::MapServer::FillSymbol", XSD::QName.new(nil, "BackgroundSymbol")], [0, 1]],
            ["copyrightText", ["SOAP::SOAPString", XSD::QName.new(nil, "CopyrightText")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerLegendClass,
          :schema_type => XSD::QName.new(NsC_93, "MapServerLegendClass"),
          :schema_element => [
            ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "Label")]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")]],
            ["symbolImage", ["ESRI::Soap::MapServer::ImageResult", XSD::QName.new(nil, "SymbolImage")], [0, 1]],
            ["transparentColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "TransparentColor")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerLegendGroup,
          :schema_type => XSD::QName.new(NsC_93, "MapServerLegendGroup"),
          :schema_element => [
            ["heading", ["SOAP::SOAPString", XSD::QName.new(nil, "Heading")]],
            ["legendClasses", ["ESRI::Soap::MapServer::ArrayOfMapServerLegendClass", XSD::QName.new(nil, "LegendClasses")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerLegendInfo,
          :schema_type => XSD::QName.new(NsC_93, "MapServerLegendInfo"),
          :schema_element => [
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["legendGroups", ["ESRI::Soap::MapServer::ArrayOfMapServerLegendGroup", XSD::QName.new(nil, "LegendGroups")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerLegendPatch,
          :schema_type => XSD::QName.new(NsC_93, "MapServerLegendPatch"),
          :schema_element => [
            ["width", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Width")]],
            ["height", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Height")]],
            ["imageDPI", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ImageDPI")]],
            ["linePatch", ["ESRI::Soap::MapServer::LinePatch", XSD::QName.new(nil, "LinePatch")], [0, 1]],
            ["areaPatch", ["ESRI::Soap::MapServer::AreaPatch", XSD::QName.new(nil, "AreaPatch")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerRelationship,
          :schema_type => XSD::QName.new(NsC_93, "MapServerRelationship"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["rows", ["ESRI::Soap::MapServer::ArrayOfMapServerRow", XSD::QName.new(nil, "Rows")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MapServerRow,
          :schema_type => XSD::QName.new(NsC_93, "MapServerRow"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["properties", ["ESRI::Soap::MapServer::PropertySet", XSD::QName.new(nil, "Properties")], [0, 1]],
            ["relationships", ["ESRI::Soap::MapServer::ArrayOfMapServerRelationship", XSD::QName.new(nil, "Relationships")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::AlternatingScaleBar,
          :schema_type => XSD::QName.new(NsC_93, "AlternatingScaleBar"),
          :schema_basetype => XSD::QName.new(NsC_93, "ScaleBar"),
          :schema_element => [
            ["barHeight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "BarHeight")], [0, 1]],
            ["division", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Division")], [0, 1]],
            ["divisions", ["SOAP::SOAPShort", XSD::QName.new(nil, "Divisions")], [0, 1]],
            ["divisionsBeforeZero", ["SOAP::SOAPShort", XSD::QName.new(nil, "DivisionsBeforeZero")], [0, 1]],
            ["subdivisions", ["SOAP::SOAPShort", XSD::QName.new(nil, "Subdivisions")], [0, 1]],
            ["units", ["ESRI::Soap::MapServer::EsriUnits", XSD::QName.new(nil, "Units")], [0, 1]],
            ["unitLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "UnitLabel")], [0, 1]],
            ["unitLabelPosition", ["ESRI::Soap::MapServer::EsriScaleBarPos", XSD::QName.new(nil, "UnitLabelPosition")], [0, 1]],
            ["unitLabelGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "UnitLabelGap")], [0, 1]],
            ["unitLabelSymbol", ["ESRI::Soap::MapServer::TextSymbol", XSD::QName.new(nil, "UnitLabelSymbol")], [0, 1]],
            ["labelFrequency", ["ESRI::Soap::MapServer::EsriScaleBarFrequency", XSD::QName.new(nil, "LabelFrequency")], [0, 1]],
            ["labelPosition", ["ESRI::Soap::MapServer::EsriVertPosEnum", XSD::QName.new(nil, "LabelPosition")], [0, 1]],
            ["labelGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "LabelGap")], [0, 1]],
            ["labelSymbol", ["ESRI::Soap::MapServer::TextSymbol", XSD::QName.new(nil, "LabelSymbol")], [0, 1]],
            ["numberFormat", ["ESRI::Soap::MapServer::NumericFormat", XSD::QName.new(nil, "NumberFormat")], [0, 1]],
            ["resizeHint", ["ESRI::Soap::MapServer::EsriScaleBarResizeHint", XSD::QName.new(nil, "ResizeHint")], [0, 1]],
            ["fillSymbol1", ["ESRI::Soap::MapServer::FillSymbol", XSD::QName.new(nil, "FillSymbol1")], [0, 1]],
            ["fillSymbol2", ["ESRI::Soap::MapServer::FillSymbol", XSD::QName.new(nil, "FillSymbol2")], [0, 1]],
            ["divisionMarkSymbol", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "DivisionMarkSymbol")], [0, 1]],
            ["subdivisionMarkSymbol", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "SubdivisionMarkSymbol")], [0, 1]],
            ["divisionMarkHeight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "DivisionMarkHeight")], [0, 1]],
            ["subdivisionMarkHeight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "SubdivisionMarkHeight")], [0, 1]],
            ["markPosition", ["ESRI::Soap::MapServer::EsriVertPosEnum", XSD::QName.new(nil, "MarkPosition")], [0, 1]],
            ["markFrequency", ["ESRI::Soap::MapServer::EsriScaleBarFrequency", XSD::QName.new(nil, "MarkFrequency")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::SingleDivisionScaleBar,
          :schema_type => XSD::QName.new(NsC_93, "SingleDivisionScaleBar"),
          :schema_basetype => XSD::QName.new(NsC_93, "ScaleBar"),
          :schema_element => [
            ["barHeight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "BarHeight")], [0, 1]],
            ["division", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Division")], [0, 1]],
            ["divisions", ["SOAP::SOAPShort", XSD::QName.new(nil, "Divisions")], [0, 1]],
            ["divisionsBeforeZero", ["SOAP::SOAPShort", XSD::QName.new(nil, "DivisionsBeforeZero")], [0, 1]],
            ["subdivisions", ["SOAP::SOAPShort", XSD::QName.new(nil, "Subdivisions")], [0, 1]],
            ["units", ["ESRI::Soap::MapServer::EsriUnits", XSD::QName.new(nil, "Units")], [0, 1]],
            ["unitLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "UnitLabel")], [0, 1]],
            ["unitLabelPosition", ["ESRI::Soap::MapServer::EsriScaleBarPos", XSD::QName.new(nil, "UnitLabelPosition")], [0, 1]],
            ["unitLabelGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "UnitLabelGap")], [0, 1]],
            ["unitLabelSymbol", ["ESRI::Soap::MapServer::TextSymbol", XSD::QName.new(nil, "UnitLabelSymbol")], [0, 1]],
            ["labelFrequency", ["ESRI::Soap::MapServer::EsriScaleBarFrequency", XSD::QName.new(nil, "LabelFrequency")], [0, 1]],
            ["labelPosition", ["ESRI::Soap::MapServer::EsriVertPosEnum", XSD::QName.new(nil, "LabelPosition")], [0, 1]],
            ["labelGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "LabelGap")], [0, 1]],
            ["labelSymbol", ["ESRI::Soap::MapServer::TextSymbol", XSD::QName.new(nil, "LabelSymbol")], [0, 1]],
            ["numberFormat", ["ESRI::Soap::MapServer::NumericFormat", XSD::QName.new(nil, "NumberFormat")], [0, 1]],
            ["resizeHint", ["ESRI::Soap::MapServer::EsriScaleBarResizeHint", XSD::QName.new(nil, "ResizeHint")], [0, 1]],
            ["fillSymbol", ["ESRI::Soap::MapServer::FillSymbol", XSD::QName.new(nil, "FillSymbol")], [0, 1]],
            ["divisionMarkSymbol", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "DivisionMarkSymbol")], [0, 1]],
            ["subdivisionMarkSymbol", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "SubdivisionMarkSymbol")], [0, 1]],
            ["divisionMarkHeight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "DivisionMarkHeight")], [0, 1]],
            ["subdivisionMarkHeight", ["SOAP::SOAPDouble", XSD::QName.new(nil, "SubdivisionMarkHeight")], [0, 1]],
            ["markPosition", ["ESRI::Soap::MapServer::EsriVertPosEnum", XSD::QName.new(nil, "MarkPosition")], [0, 1]],
            ["markFrequency", ["ESRI::Soap::MapServer::EsriScaleBarFrequency", XSD::QName.new(nil, "MarkFrequency")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::SQLSyntaxInfo,
          :schema_type => XSD::QName.new(NsC_93, "SQLSyntaxInfo"),
          :schema_element => [
            ["functionNames", ["ESRI::Soap::MapServer::PropertySet", XSD::QName.new(nil, "FunctionNames")], [0, 1]],
            ["specialCharacters", ["ESRI::Soap::MapServer::PropertySet", XSD::QName.new(nil, "SpecialCharacters")], [0, 1]],
            ["supportedPredicates", ["ESRI::Soap::MapServer::ArrayOfString", XSD::QName.new(nil, "SupportedPredicates")], [0, 1]],
            ["supportedClauses", ["ESRI::Soap::MapServer::ArrayOfString", XSD::QName.new(nil, "SupportedClauses")], [0, 1]],
            ["identifierCase", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IdentifierCase")]],
            ["delimitedIdentifierCase", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DelimitedIdentifierCase")]],
            ["stringComparisonCase", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "StringComparisonCase")]],
            ["keywords", ["ESRI::Soap::MapServer::ArrayOfString", XSD::QName.new(nil, "Keywords")], [0, 1]],
            ["invalidCharacters", ["SOAP::SOAPString", XSD::QName.new(nil, "InvalidCharacters")]],
            ["invalidStartingCharacters", ["SOAP::SOAPString", XSD::QName.new(nil, "InvalidStartingCharacters")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::SymbolBackground,
          :schema_type => XSD::QName.new(NsC_93, "SymbolBackground"),
          :schema_basetype => XSD::QName.new(NsC_93, "Background"),
          :schema_element => [
            ["horizontalGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "HorizontalGap")]],
            ["cornerRounding", ["SOAP::SOAPShort", XSD::QName.new(nil, "CornerRounding")]],
            ["verticalGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "VerticalGap")]],
            ["symbol", ["ESRI::Soap::MapServer::FillSymbol", XSD::QName.new(nil, "Symbol")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::SymbolBorder,
          :schema_type => XSD::QName.new(NsC_93, "SymbolBorder"),
          :schema_basetype => XSD::QName.new(NsC_93, "Border"),
          :schema_element => [
            ["horizontalGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "HorizontalGap")]],
            ["cornerRounding", ["SOAP::SOAPShort", XSD::QName.new(nil, "CornerRounding")]],
            ["verticalGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "VerticalGap")]],
            ["symbol", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "Symbol")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::SymbolShadow,
          :schema_type => XSD::QName.new(NsC_93, "SymbolShadow"),
          :schema_basetype => XSD::QName.new(NsC_93, "Shadow"),
          :schema_element => [
            ["symbol", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "Symbol")], [0, 1]],
            ["cornerRounding", ["SOAP::SOAPShort", XSD::QName.new(nil, "CornerRounding")]],
            ["horizontalOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "HorizontalOffset")]],
            ["verticalOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "VerticalOffset")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::LineElement,
          :schema_type => XSD::QName.new(NsC_93, "LineElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]],
            ["line", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Line")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]],
            ["fixedAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FixedAspectRatio")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::CircleElement,
          :schema_type => XSD::QName.new(NsC_93, "CircleElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["rectangle", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Rectangle")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]],
            ["fixedAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FixedAspectRatio")], [0, 1]],
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EllipseElement,
          :schema_type => XSD::QName.new(NsC_93, "EllipseElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["rectangle", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Rectangle")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]],
            ["fixedAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FixedAspectRatio")], [0, 1]],
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GroupElement,
          :schema_type => XSD::QName.new(NsC_93, "GroupElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "Element"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["elements", ["ESRI::Soap::MapServer::ArrayOfGraphicElement", XSD::QName.new(nil, "Elements")]],
            ["rectangle", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Rectangle")], [0, 1]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]],
            ["fixedAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FixedAspectRatio")], [0, 1]],
            ["border", ["ESRI::Soap::MapServer::Border", XSD::QName.new(nil, "Border")], [0, 1]],
            ["background", ["ESRI::Soap::MapServer::Background", XSD::QName.new(nil, "Background")], [0, 1]],
            ["draftMode", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DraftMode")], [0, 1]],
            ["shadow", ["ESRI::Soap::MapServer::Shadow", XSD::QName.new(nil, "Shadow")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MarkerElement,
          :schema_type => XSD::QName.new(NsC_93, "MarkerElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]],
            ["point", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "Point")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ParagraphTextElement,
          :schema_type => XSD::QName.new(NsC_93, "ParagraphTextElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["text", ["SOAP::SOAPString", XSD::QName.new(nil, "Text")], [0, 1]],
            ["scale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Scale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]],
            ["textGeometry", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "TextGeometry")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]],
            ["frameBorder", ["ESRI::Soap::MapServer::Border", XSD::QName.new(nil, "FrameBorder")], [0, 1]],
            ["frameBackground", ["ESRI::Soap::MapServer::Background", XSD::QName.new(nil, "FrameBackground")], [0, 1]],
            ["frameShadow", ["ESRI::Soap::MapServer::Shadow", XSD::QName.new(nil, "FrameShadow")], [0, 1]],
            ["columnGap", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ColumnGap")], [0, 1]],
            ["columnCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "ColumnCount")], [0, 1]],
            ["margin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Margin")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::PolygonElement,
          :schema_type => XSD::QName.new(NsC_93, "PolygonElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]],
            ["polygon", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Polygon")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]],
            ["fixedAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FixedAspectRatio")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::RectangleElement,
          :schema_type => XSD::QName.new(NsC_93, "RectangleElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["rectangle", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Rectangle")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]],
            ["fixedAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FixedAspectRatio")], [0, 1]],
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::TextElement,
          :schema_type => XSD::QName.new(NsC_93, "TextElement"),
          :schema_basetype => XSD::QName.new(NsC_93, "GraphicElement"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]],
            ["autoTransform", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AutoTransform")], [0, 1]],
            ["referenceScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ReferenceScale")], [0, 1]],
            ["text", ["SOAP::SOAPString", XSD::QName.new(nil, "Text")], [0, 1]],
            ["scale", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Scale")], [0, 1]],
            ["symbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "Symbol")], [0, 1]],
            ["textGeometry", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "TextGeometry")]],
            ["locked", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Locked")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::Patch,
          :schema_type => XSD::QName.new(NsC_93, "Patch"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
            ["preserveAspectRatio", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PreserveAspectRatio")], [0, 1]],
            ["geometry", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "Geometry")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::TileImageInfo,
          :schema_type => XSD::QName.new(NsC_93, "TileImageInfo"),
          :schema_element => [
            ["cacheTileFormat", ["SOAP::SOAPString", XSD::QName.new(nil, "CacheTileFormat")]],
            ["compressionQuality", ["SOAP::SOAPInt", XSD::QName.new(nil, "CompressionQuality")]],
            ["antialiasing", ["SOAP::SOAPString", XSD::QName.new(nil, "Antialiasing")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::LayerCacheInfo,
          :schema_type => XSD::QName.new(NsC_93, "LayerCacheInfo"),
          :schema_element => [
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["hasCache", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasCache")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfLayerCacheInfo,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfLayerCacheInfo"),
          :schema_element => [
            ["layerCacheInfo", ["ESRI::Soap::MapServer::LayerCacheInfo", XSD::QName.new(nil, "LayerCacheInfo")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::CacheDescriptionInfo,
          :schema_type => XSD::QName.new(NsC_93, "CacheDescriptionInfo"),
          :schema_element => [
            ["tileCacheInfo", ["ESRI::Soap::MapServer::TileCacheInfo", XSD::QName.new(nil, "TileCacheInfo")]],
            ["tileImageInfo", ["ESRI::Soap::MapServer::TileImageInfo", XSD::QName.new(nil, "TileImageInfo")]],
            ["layerCacheInfos", ["ESRI::Soap::MapServer::ArrayOfLayerCacheInfo", XSD::QName.new(nil, "LayerCacheInfos")]],
            ["cacheControlInfo", ["ESRI::Soap::MapServer::CacheControlInfo", XSD::QName.new(nil, "CacheControlInfo")]],
            ["serviceType", ["ESRI::Soap::MapServer::EsriCachedMapServiceType", XSD::QName.new(nil, "ServiceType")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::CacheControlInfo,
          :schema_type => XSD::QName.new(NsC_93, "CacheControlInfo"),
          :schema_element => [
            ["clientCachingAllowed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ClientCachingAllowed")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryResultOptions,
          :schema_type => XSD::QName.new(NsC_93, "QueryResultOptions"),
          :schema_element => [
            ["format", ["ESRI::Soap::MapServer::EsriQueryResultFormat", XSD::QName.new(nil, "Format")]],
            ["formatProperties", ["ESRI::Soap::MapServer::PropertySet", XSD::QName.new(nil, "FormatProperties")], [0, 1]],
            ["geoTransformation", ["ESRI::Soap::MapServer::GeoTransformation", XSD::QName.new(nil, "GeoTransformation")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryResult,
          :schema_type => XSD::QName.new(NsC_93, "QueryResult"),
          :schema_element => [
            ["mimeData", ["SOAP::SOAPBase64", XSD::QName.new(nil, "MimeData")], [0, 1]],
            ["uRL", ["SOAP::SOAPString", XSD::QName.new(nil, "URL")]],
            ["object", [nil, XSD::QName.new(nil, "Object")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GrayColor,
          :schema_type => XSD::QName.new(NsC_93, "GrayColor"),
          :schema_basetype => XSD::QName.new(NsC_93, "Color"),
          :schema_element => [
            ["useWindowsDithering", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "UseWindowsDithering")], [0, 1]],
            ["alphaValue", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "AlphaValue")], [0, 1]],
            ["grayLevel", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "GrayLevel")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::RgbColor,
          :schema_type => XSD::QName.new(NsC_93, "RgbColor"),
          :schema_basetype => XSD::QName.new(NsC_93, "Color"),
          :schema_element => [
            ["useWindowsDithering", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "UseWindowsDithering")], [0, 1]],
            ["alphaValue", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "AlphaValue")], [0, 1]],
            ["red", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Red")]],
            ["green", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Green")]],
            ["blue", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Blue")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::CmykColor,
          :schema_type => XSD::QName.new(NsC_93, "CmykColor"),
          :schema_basetype => XSD::QName.new(NsC_93, "Color"),
          :schema_element => [
            ["useWindowsDithering", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "UseWindowsDithering")], [0, 1]],
            ["alphaValue", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "AlphaValue")], [0, 1]],
            ["cyan", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Cyan")]],
            ["magenta", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Magenta")]],
            ["yellow", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Yellow")]],
            ["black", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Black")]],
            ["overprint", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Overprint")]],
            ["isSpot", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsSpot")]],
            ["spotDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SpotDescription")]],
            ["spotPercent", ["SOAP::SOAPShort", XSD::QName.new(nil, "SpotPercent")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::HlsColor,
          :schema_type => XSD::QName.new(NsC_93, "HlsColor"),
          :schema_basetype => XSD::QName.new(NsC_93, "Color"),
          :schema_element => [
            ["useWindowsDithering", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "UseWindowsDithering")], [0, 1]],
            ["alphaValue", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "AlphaValue")], [0, 1]],
            ["hue", ["SOAP::SOAPShort", XSD::QName.new(nil, "Hue")]],
            ["lightness", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Lightness")]],
            ["saturation", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Saturation")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::HsvColor,
          :schema_type => XSD::QName.new(NsC_93, "HsvColor"),
          :schema_basetype => XSD::QName.new(NsC_93, "Color"),
          :schema_element => [
            ["useWindowsDithering", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "UseWindowsDithering")], [0, 1]],
            ["alphaValue", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "AlphaValue")], [0, 1]],
            ["hue", ["SOAP::SOAPShort", XSD::QName.new(nil, "Hue")]],
            ["saturation", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Saturation")]],
            ["value", ["SOAP::SOAPUnsignedByte", XSD::QName.new(nil, "Value")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::SimpleFillSymbol,
          :schema_type => XSD::QName.new(NsC_93, "SimpleFillSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "FillSymbol"),
          :schema_element => [
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["outline", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "Outline")], [0, 1]],
            ["style", ["ESRI::Soap::MapServer::EsriSimpleFillStyle", XSD::QName.new(nil, "Style")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::SimpleLineSymbol,
          :schema_type => XSD::QName.new(NsC_93, "SimpleLineSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "LineSymbol"),
          :schema_element => [
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["width", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Width")]],
            ["style", ["ESRI::Soap::MapServer::EsriSimpleLineStyle", XSD::QName.new(nil, "Style")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::SimpleMarkerSymbol,
          :schema_type => XSD::QName.new(NsC_93, "SimpleMarkerSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "MarkerSymbol"),
          :schema_element => [
            ["angle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Angle")]],
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["size", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Size")]],
            ["xOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOffset")]],
            ["yOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOffset")]],
            ["outline", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Outline")]],
            ["outlineSize", ["SOAP::SOAPDouble", XSD::QName.new(nil, "OutlineSize")]],
            ["outlineColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "OutlineColor")]],
            ["style", ["ESRI::Soap::MapServer::EsriSimpleMarkerStyle", XSD::QName.new(nil, "Style")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::TextSymbol,
          :schema_type => XSD::QName.new(NsC_93, "TextSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "Symbol"),
          :schema_element => [
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["breakCharIndex", ["SOAP::SOAPInt", XSD::QName.new(nil, "BreakCharIndex")]],
            ["verticalAlignment", ["ESRI::Soap::MapServer::EsriTextVerticalAlignment", XSD::QName.new(nil, "VerticalAlignment")]],
            ["horizontalAlignment", ["ESRI::Soap::MapServer::EsriTextHorizontalAlignment", XSD::QName.new(nil, "HorizontalAlignment")]],
            ["clip", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Clip")]],
            ["rightToLeft", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RightToLeft")]],
            ["angle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Angle")]],
            ["xOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOffset")]],
            ["yOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOffset")]],
            ["shadowColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "ShadowColor")], [0, 1]],
            ["shadowXOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ShadowXOffset")]],
            ["shadowYOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ShadowYOffset")]],
            ["textPosition", ["ESRI::Soap::MapServer::EsriTextPosition", XSD::QName.new(nil, "TextPosition")]],
            ["textCase", ["ESRI::Soap::MapServer::EsriTextCase", XSD::QName.new(nil, "TextCase")]],
            ["characterSpacing", ["SOAP::SOAPDouble", XSD::QName.new(nil, "CharacterSpacing")]],
            ["characterWidth", ["SOAP::SOAPDouble", XSD::QName.new(nil, "CharacterWidth")]],
            ["wordSpacing", ["SOAP::SOAPDouble", XSD::QName.new(nil, "WordSpacing")]],
            ["kerning", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Kerning")]],
            ["leading", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Leading")]],
            ["textDirection", ["ESRI::Soap::MapServer::EsriTextDirection", XSD::QName.new(nil, "TextDirection")]],
            ["flipAngle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "FlipAngle")]],
            ["typeSetting", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "TypeSetting")]],
            ["textPathClass", ["SOAP::SOAPString", XSD::QName.new(nil, "TextPathClass")], [0, 1]],
            ["fillSymbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "FillSymbol")], [0, 1]],
            ["text", ["SOAP::SOAPString", XSD::QName.new(nil, "Text")]],
            ["size", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Size")]],
            ["maskStyle", ["ESRI::Soap::MapServer::EsriMaskStyle", XSD::QName.new(nil, "MaskStyle")]],
            ["maskSize", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MaskSize")]],
            ["maskSymbol", ["ESRI::Soap::MapServer::C_Symbol", XSD::QName.new(nil, "MaskSymbol")], [0, 1]],
            ["fontName", ["SOAP::SOAPString", XSD::QName.new(nil, "FontName")], [0, 1]],
            ["fontItalic", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FontItalic")], [0, 1]],
            ["fontUnderline", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FontUnderline")], [0, 1]],
            ["fontStrikethrough", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FontStrikethrough")], [0, 1]],
            ["fontWeight", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontWeight")], [0, 1]],
            ["fontCharset", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontCharset")], [0, 1]],
            ["fontSizeHi", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontSizeHi")], [0, 1]],
            ["fontSizeLo", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontSizeLo")], [0, 1]],
            ["textParserClass", ["SOAP::SOAPString", XSD::QName.new(nil, "TextParserClass")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::CharacterMarkerSymbol,
          :schema_type => XSD::QName.new(NsC_93, "CharacterMarkerSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "CartographicMarkerSymbol"),
          :schema_element => [
            ["angle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Angle")]],
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["size", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Size")]],
            ["xOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOffset")]],
            ["yOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOffset")]],
            ["xScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XScale")]],
            ["yScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YScale")]],
            ["characterIndex", ["SOAP::SOAPInt", XSD::QName.new(nil, "CharacterIndex")]],
            ["fontName", ["SOAP::SOAPString", XSD::QName.new(nil, "FontName")], [0, 1]],
            ["fontItalic", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FontItalic")], [0, 1]],
            ["fontUnderline", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FontUnderline")], [0, 1]],
            ["fontStrikethrough", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FontStrikethrough")], [0, 1]],
            ["fontWeight", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontWeight")], [0, 1]],
            ["fontCharset", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontCharset")], [0, 1]],
            ["fontSizeHi", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontSizeHi")], [0, 1]],
            ["fontSizeLo", ["SOAP::SOAPInt", XSD::QName.new(nil, "FontSizeLo")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::PictureMarkerSymbol,
          :schema_type => XSD::QName.new(NsC_93, "PictureMarkerSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "CartographicMarkerSymbol"),
          :schema_element => [
            ["angle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Angle")]],
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["size", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Size")]],
            ["xOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOffset")]],
            ["yOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOffset")]],
            ["xScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XScale")]],
            ["yScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YScale")]],
            ["bgColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "BgColor")], [0, 1]],
            ["bitmapTransColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "BitmapTransColor")], [0, 1]],
            ["picture", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Picture")], [0, 1]],
            ["fgColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "FgColor")], [0, 1]],
            ["swap1BitColor", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Swap1BitColor")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::PictureFillSymbol,
          :schema_type => XSD::QName.new(NsC_93, "PictureFillSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "FillSymbol"),
          :schema_element => [
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["outline", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "Outline")], [0, 1]],
            ["picture", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Picture")]],
            ["bgColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "BgColor")], [0, 1]],
            ["fgColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "FgColor")], [0, 1]],
            ["bitmapTransColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "BitmapTransColor")], [0, 1]],
            ["xSeparation", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XSeparation")], [0, 1]],
            ["ySeparation", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YSeparation")], [0, 1]],
            ["swap1BitColor", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Swap1BitColor")], [0, 1]],
            ["angle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Angle")], [0, 1]],
            ["xOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOffset")], [0, 1]],
            ["yOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOffset")], [0, 1]],
            ["xScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XScale")], [0, 1]],
            ["yScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YScale")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::XMLBinarySymbol,
          :schema_type => XSD::QName.new(NsC_93, "XMLBinarySymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "Symbol"),
          :schema_element => [
            ["data", ["ESRI::Soap::MapServer::XMLPersistedObject", XSD::QName.new(nil, "Data")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::XMLBinaryFillSymbol,
          :schema_type => XSD::QName.new(NsC_93, "XMLBinaryFillSymbol"),
          :schema_basetype => XSD::QName.new(NsC_93, "FillSymbol"),
          :schema_element => [
            ["color", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "Color")], [0, 1]],
            ["outline", ["ESRI::Soap::MapServer::LineSymbol", XSD::QName.new(nil, "Outline")], [0, 1]],
            ["data", ["ESRI::Soap::MapServer::XMLPersistedObject", XSD::QName.new(nil, "Data")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GeometryDef,
          :schema_type => XSD::QName.new(NsC_93, "GeometryDef"),
          :schema_element => [
            ["avgNumPoints", ["SOAP::SOAPInt", XSD::QName.new(nil, "AvgNumPoints")]],
            ["geometryType", ["ESRI::Soap::MapServer::EsriGeometryType", XSD::QName.new(nil, "GeometryType")]],
            ["hasM", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasM")]],
            ["hasZ", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasZ")]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")]],
            ["gridSize0", ["SOAP::SOAPDouble", XSD::QName.new(nil, "GridSize0")], [0, 1]],
            ["gridSize1", ["SOAP::SOAPDouble", XSD::QName.new(nil, "GridSize1")], [0, 1]],
            ["gridSize2", ["SOAP::SOAPDouble", XSD::QName.new(nil, "GridSize2")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::Field,
          :schema_type => XSD::QName.new(NsC_93, "Field"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["type", ["ESRI::Soap::MapServer::EsriFieldType", XSD::QName.new(nil, "Type")]],
            ["isNullable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsNullable")]],
            ["length", ["SOAP::SOAPInt", XSD::QName.new(nil, "Length")]],
            ["precision", ["SOAP::SOAPInt", XSD::QName.new(nil, "Precision")]],
            ["scale", ["SOAP::SOAPInt", XSD::QName.new(nil, "Scale")]],
            ["required", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Required")], [0, 1]],
            ["editable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Editable")], [0, 1]],
            ["domainFixed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DomainFixed")], [0, 1]],
            ["geometryDef", ["ESRI::Soap::MapServer::GeometryDef", XSD::QName.new(nil, "GeometryDef")], [0, 1]],
            ["aliasName", ["SOAP::SOAPString", XSD::QName.new(nil, "AliasName")], [0, 1]],
            ["modelName", ["SOAP::SOAPString", XSD::QName.new(nil, "ModelName")], [0, 1]],
            ["defaultValue", [nil, XSD::QName.new(nil, "DefaultValue")], [0, 1]],
            ["domain", ["ESRI::Soap::MapServer::Domain", XSD::QName.new(nil, "Domain")], [0, 1]],
            ["rasterDef", ["ESRI::Soap::MapServer::RasterDef", XSD::QName.new(nil, "RasterDef")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfField,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfField"),
          :schema_element => [
            ["field", ["ESRI::Soap::MapServer::Field[]", XSD::QName.new(nil, "Field")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::Fields,
          :schema_type => XSD::QName.new(NsC_93, "Fields"),
          :schema_element => [
            ["fieldArray", ["ESRI::Soap::MapServer::ArrayOfField", XSD::QName.new(nil, "FieldArray")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfValue,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfValue"),
          :schema_element => [
            ["value", ["[]", XSD::QName.new(nil, "Value")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::Record,
          :schema_type => XSD::QName.new(NsC_93, "Record"),
          :schema_element => [
            ["values", ["ESRI::Soap::MapServer::ArrayOfValue", XSD::QName.new(nil, "Values")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfRecord,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfRecord"),
          :schema_element => [
            ["record", ["ESRI::Soap::MapServer::Record[]", XSD::QName.new(nil, "Record")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::RecordSet,
          :schema_type => XSD::QName.new(NsC_93, "RecordSet"),
          :schema_element => [
            ["fields", ["ESRI::Soap::MapServer::Fields", XSD::QName.new(nil, "Fields")]],
            ["records", ["ESRI::Soap::MapServer::ArrayOfRecord", XSD::QName.new(nil, "Records")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::FIDSet,
          :schema_type => XSD::QName.new(NsC_93, "FIDSet"),
          :schema_element => [
            ["fIDArray", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "FIDArray")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryFilter,
          :schema_type => XSD::QName.new(NsC_93, "QueryFilter"),
          :schema_element => [
            ["subFields", ["SOAP::SOAPString", XSD::QName.new(nil, "SubFields")], [0, 1]],
            ["whereClause", ["SOAP::SOAPString", XSD::QName.new(nil, "WhereClause")]],
            ["spatialReferenceFieldName", ["SOAP::SOAPString", XSD::QName.new(nil, "SpatialReferenceFieldName")], [0, 1]],
            ["resolution", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Resolution")]],
            ["outputSpatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "OutputSpatialReference")], [0, 1]],
            ["fIDSet", ["ESRI::Soap::MapServer::FIDSet", XSD::QName.new(nil, "FIDSet")], [0, 1]],
            ["postfixClause", ["SOAP::SOAPString", XSD::QName.new(nil, "PostfixClause")], [0, 1]],
            ["filterDefs", ["ESRI::Soap::MapServer::ArrayOfFilterDef", XSD::QName.new(nil, "FilterDefs")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::SpatialFilter,
          :schema_type => XSD::QName.new(NsC_93, "SpatialFilter"),
          :schema_basetype => XSD::QName.new(NsC_93, "QueryFilter"),
          :schema_element => [
            ["subFields", ["SOAP::SOAPString", XSD::QName.new(nil, "SubFields")], [0, 1]],
            ["whereClause", ["SOAP::SOAPString", XSD::QName.new(nil, "WhereClause")]],
            ["spatialReferenceFieldName", ["SOAP::SOAPString", XSD::QName.new(nil, "SpatialReferenceFieldName")], [0, 1]],
            ["resolution", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Resolution")]],
            ["outputSpatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "OutputSpatialReference")], [0, 1]],
            ["fIDSet", ["ESRI::Soap::MapServer::FIDSet", XSD::QName.new(nil, "FIDSet")], [0, 1]],
            ["postfixClause", ["SOAP::SOAPString", XSD::QName.new(nil, "PostfixClause")], [0, 1]],
            ["filterDefs", ["ESRI::Soap::MapServer::ArrayOfFilterDef", XSD::QName.new(nil, "FilterDefs")], [0, 1]],
            ["searchOrder", ["ESRI::Soap::MapServer::EsriSearchOrder", XSD::QName.new(nil, "SearchOrder")]],
            ["spatialRel", ["ESRI::Soap::MapServer::EsriSpatialRelEnum", XSD::QName.new(nil, "SpatialRel")]],
            ["spatialRelDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SpatialRelDescription")]],
            ["filterGeometry", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "FilterGeometry")]],
            ["geometryFieldName", ["SOAP::SOAPString", XSD::QName.new(nil, "GeometryFieldName")]],
            ["filterOwnsGeometry", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "FilterOwnsGeometry")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::XMLFilterDef,
          :schema_type => XSD::QName.new(NsC_93, "XMLFilterDef"),
          :schema_basetype => XSD::QName.new(NsC_93, "FilterDef"),
          :schema_element => [
            ["fieldName", ["SOAP::SOAPString", XSD::QName.new(nil, "FieldName")]],
            ["expression", ["SOAP::SOAPString", XSD::QName.new(nil, "Expression")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfFilterDef,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfFilterDef"),
          :schema_element => [
            ["filterDef", ["ESRI::Soap::MapServer::FilterDef[]", XSD::QName.new(nil, "FilterDef")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::RangeDomain,
          :schema_type => XSD::QName.new(NsC_93, "RangeDomain"),
          :schema_basetype => XSD::QName.new(NsC_93, "Domain"),
          :schema_element => [
            ["domainName", ["SOAP::SOAPString", XSD::QName.new(nil, "DomainName")]],
            ["fieldType", ["ESRI::Soap::MapServer::EsriFieldType", XSD::QName.new(nil, "FieldType")]],
            ["mergePolicy", ["ESRI::Soap::MapServer::EsriMergePolicyType", XSD::QName.new(nil, "MergePolicy")]],
            ["splitPolicy", ["ESRI::Soap::MapServer::EsriSplitPolicyType", XSD::QName.new(nil, "SplitPolicy")]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
            ["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "Owner")], [0, 1]],
            ["maxValue", [nil, XSD::QName.new(nil, "MaxValue")]],
            ["minValue", [nil, XSD::QName.new(nil, "MinValue")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::CodedValue,
          :schema_type => XSD::QName.new(NsC_93, "CodedValue"),
          :schema_element => [
            ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
            ["code", [nil, XSD::QName.new(nil, "Code")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfCodedValue,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfCodedValue"),
          :schema_element => [
            ["codedValue", ["ESRI::Soap::MapServer::CodedValue[]", XSD::QName.new(nil, "CodedValue")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::CodedValueDomain,
          :schema_type => XSD::QName.new(NsC_93, "CodedValueDomain"),
          :schema_basetype => XSD::QName.new(NsC_93, "Domain"),
          :schema_element => [
            ["domainName", ["SOAP::SOAPString", XSD::QName.new(nil, "DomainName")]],
            ["fieldType", ["ESRI::Soap::MapServer::EsriFieldType", XSD::QName.new(nil, "FieldType")]],
            ["mergePolicy", ["ESRI::Soap::MapServer::EsriMergePolicyType", XSD::QName.new(nil, "MergePolicy")]],
            ["splitPolicy", ["ESRI::Soap::MapServer::EsriSplitPolicyType", XSD::QName.new(nil, "SplitPolicy")]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
            ["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "Owner")], [0, 1]],
            ["codedValues", ["ESRI::Soap::MapServer::ArrayOfCodedValue", XSD::QName.new(nil, "CodedValues")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::BitMaskCodedValueDomain,
          :schema_type => XSD::QName.new(NsC_93, "BitMaskCodedValueDomain"),
          :schema_basetype => XSD::QName.new(NsC_93, "CodedValueDomain"),
          :schema_element => [
            ["domainName", ["SOAP::SOAPString", XSD::QName.new(nil, "DomainName")]],
            ["fieldType", ["ESRI::Soap::MapServer::EsriFieldType", XSD::QName.new(nil, "FieldType")]],
            ["mergePolicy", ["ESRI::Soap::MapServer::EsriMergePolicyType", XSD::QName.new(nil, "MergePolicy")]],
            ["splitPolicy", ["ESRI::Soap::MapServer::EsriSplitPolicyType", XSD::QName.new(nil, "SplitPolicy")]],
            ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
            ["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "Owner")], [0, 1]],
            ["codedValues", ["ESRI::Soap::MapServer::ArrayOfCodedValue", XSD::QName.new(nil, "CodedValues")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::RasterDef,
          :schema_type => XSD::QName.new(NsC_93, "RasterDef"),
          :schema_element => [
            ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
            ["isByRef", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsByRef")], [0, 1]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GeometryResultOptions,
          :schema_type => XSD::QName.new(NsC_93, "GeometryResultOptions"),
          :schema_element => [
            ["densifyGeometries", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DensifyGeometries")], [0, 1]],
            ["maximumSegmentLength", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MaximumSegmentLength")], [0, 1]],
            ["maximumDeviation", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MaximumDeviation")], [0, 1]],
            ["generalizeGeometries", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "GeneralizeGeometries")], [0, 1]],
            ["maximumAllowableOffset", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MaximumAllowableOffset")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::PropertySetProperty,
          :schema_type => XSD::QName.new(NsC_93, "PropertySetProperty"),
          :schema_element => [
            ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "Key")]],
            ["value", [nil, XSD::QName.new(nil, "Value")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfPropertySetProperty,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfPropertySetProperty"),
          :schema_element => [
            ["propertySetProperty", ["ESRI::Soap::MapServer::PropertySetProperty[]", XSD::QName.new(nil, "PropertySetProperty")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::PropertySet,
          :schema_type => XSD::QName.new(NsC_93, "PropertySet"),
          :schema_element => [
            ["propertyArray", ["ESRI::Soap::MapServer::ArrayOfPropertySetProperty", XSD::QName.new(nil, "PropertyArray")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::XMLPersistedObject,
          :schema_type => XSD::QName.new(NsC_93, "XMLPersistedObject"),
          :schema_element => [
            ["bytes", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Bytes")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::NumericFormat,
          :schema_type => XSD::QName.new(NsC_93, "NumericFormat"),
          :schema_element => [
            ["roundingOption", ["ESRI::Soap::MapServer::EsriRoundingOptionEnum", XSD::QName.new(nil, "RoundingOption")], [0, 1]],
            ["roundingValue", ["SOAP::SOAPInt", XSD::QName.new(nil, "RoundingValue")], [0, 1]],
            ["alignmentOption", ["ESRI::Soap::MapServer::EsriNumericAlignmentEnum", XSD::QName.new(nil, "AlignmentOption")], [0, 1]],
            ["alignmentWidth", ["SOAP::SOAPInt", XSD::QName.new(nil, "AlignmentWidth")], [0, 1]],
            ["useSeparator", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "UseSeparator")], [0, 1]],
            ["zeroPad", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ZeroPad")], [0, 1]],
            ["showPlus", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ShowPlus")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfInt,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfInt"),
          :schema_element => [
            ["int", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "Int")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfString,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfString"),
          :schema_element => [
            ["string", ["SOAP::SOAPString[]", XSD::QName.new(nil, "String")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GeoTransformation,
          :schema_type => XSD::QName.new(NsC_93, "GeoTransformation"),
          :schema_element => [
            ["wKT", ["SOAP::SOAPString", XSD::QName.new(nil, "WKT")], [0, 1]],
            ["wKID", ["SOAP::SOAPInt", XSD::QName.new(nil, "WKID")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ProjectedCoordinateSystem,
          :schema_type => XSD::QName.new(NsC_93, "ProjectedCoordinateSystem"),
          :schema_basetype => XSD::QName.new(NsC_93, "SpatialReference"),
          :schema_element => [
            ["wKT", ["SOAP::SOAPString", XSD::QName.new(nil, "WKT")], [0, 1]],
            ["xOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOrigin")], [0, 1]],
            ["yOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOrigin")], [0, 1]],
            ["xYScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XYScale")], [0, 1]],
            ["zOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZOrigin")], [0, 1]],
            ["zScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZScale")], [0, 1]],
            ["mOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MOrigin")], [0, 1]],
            ["mScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MScale")], [0, 1]],
            ["xYTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XYTolerance")], [0, 1]],
            ["zTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZTolerance")], [0, 1]],
            ["mTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MTolerance")], [0, 1]],
            ["highPrecision", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HighPrecision")], [0, 1]],
            ["leftLongitude", ["SOAP::SOAPDouble", XSD::QName.new(nil, "LeftLongitude")], [0, 1]],
            ["wKID", ["SOAP::SOAPInt", XSD::QName.new(nil, "WKID")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GeographicCoordinateSystem,
          :schema_type => XSD::QName.new(NsC_93, "GeographicCoordinateSystem"),
          :schema_basetype => XSD::QName.new(NsC_93, "SpatialReference"),
          :schema_element => [
            ["wKT", ["SOAP::SOAPString", XSD::QName.new(nil, "WKT")], [0, 1]],
            ["xOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOrigin")], [0, 1]],
            ["yOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOrigin")], [0, 1]],
            ["xYScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XYScale")], [0, 1]],
            ["zOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZOrigin")], [0, 1]],
            ["zScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZScale")], [0, 1]],
            ["mOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MOrigin")], [0, 1]],
            ["mScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MScale")], [0, 1]],
            ["xYTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XYTolerance")], [0, 1]],
            ["zTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZTolerance")], [0, 1]],
            ["mTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MTolerance")], [0, 1]],
            ["highPrecision", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HighPrecision")], [0, 1]],
            ["leftLongitude", ["SOAP::SOAPDouble", XSD::QName.new(nil, "LeftLongitude")], [0, 1]],
            ["wKID", ["SOAP::SOAPInt", XSD::QName.new(nil, "WKID")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::UnknownCoordinateSystem,
          :schema_type => XSD::QName.new(NsC_93, "UnknownCoordinateSystem"),
          :schema_basetype => XSD::QName.new(NsC_93, "SpatialReference"),
          :schema_element => [
            ["wKT", ["SOAP::SOAPString", XSD::QName.new(nil, "WKT")], [0, 1]],
            ["xOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XOrigin")], [0, 1]],
            ["yOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YOrigin")], [0, 1]],
            ["xYScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XYScale")], [0, 1]],
            ["zOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZOrigin")], [0, 1]],
            ["zScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZScale")], [0, 1]],
            ["mOrigin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MOrigin")], [0, 1]],
            ["mScale", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MScale")], [0, 1]],
            ["xYTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XYTolerance")], [0, 1]],
            ["zTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZTolerance")], [0, 1]],
            ["mTolerance", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MTolerance")], [0, 1]],
            ["highPrecision", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HighPrecision")], [0, 1]],
            ["leftLongitude", ["SOAP::SOAPDouble", XSD::QName.new(nil, "LeftLongitude")], [0, 1]],
            ["wKID", ["SOAP::SOAPInt", XSD::QName.new(nil, "WKID")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::Geometry,
          :schema_type => XSD::QName.new(NsC_93, "Geometry"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EnvelopeN,
          :schema_type => XSD::QName.new(NsC_93, "EnvelopeN"),
          :schema_basetype => XSD::QName.new(NsC_93, "Envelope"),
          :schema_element => [
            ["xMin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XMin")]],
            ["yMin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YMin")]],
            ["xMax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "XMax")]],
            ["yMax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "YMax")]],
            ["zMin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZMin")], [0, 1]],
            ["zMax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ZMax")], [0, 1]],
            ["mMin", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MMin")], [0, 1]],
            ["mMax", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MMax")], [0, 1]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EnvelopeB,
          :schema_type => XSD::QName.new(NsC_93, "EnvelopeB"),
          :schema_basetype => XSD::QName.new(NsC_93, "Envelope"),
          :schema_element => [
            ["bytes", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Bytes")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::PointN,
          :schema_type => XSD::QName.new(NsC_93, "PointN"),
          :schema_basetype => XSD::QName.new(NsC_93, "Point"),
          :schema_element => [
            ["x", ["SOAP::SOAPDouble", XSD::QName.new(nil, "X")]],
            ["y", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Y")]],
            ["m", ["SOAP::SOAPDouble", XSD::QName.new(nil, "M")], [0, 1]],
            ["z", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Z")], [0, 1]],
            ["iD", ["SOAP::SOAPInt", XSD::QName.new(nil, "ID")], [0, 1]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::PointB,
          :schema_type => XSD::QName.new(NsC_93, "PointB"),
          :schema_basetype => XSD::QName.new(NsC_93, "Point"),
          :schema_element => [
            ["bytes", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Bytes")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MultipointB,
          :schema_type => XSD::QName.new(NsC_93, "MultipointB"),
          :schema_basetype => XSD::QName.new(NsC_93, "Multipoint"),
          :schema_element => [
            ["bytes", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Bytes")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MultipointN,
          :schema_type => XSD::QName.new(NsC_93, "MultipointN"),
          :schema_basetype => XSD::QName.new(NsC_93, "Multipoint"),
          :schema_element => [
            ["hasID", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasID")]],
            ["hasZ", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasZ")]],
            ["hasM", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasM")]],
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["pointArray", ["ESRI::Soap::MapServer::ArrayOfPoint", XSD::QName.new(nil, "PointArray")], [0, 1]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::Line,
          :schema_type => XSD::QName.new(NsC_93, "Line"),
          :schema_basetype => XSD::QName.new(NsC_93, "Segment"),
          :schema_element => [
            ["fromPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "FromPoint")]],
            ["toPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "ToPoint")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EllipticArc,
          :schema_type => XSD::QName.new(NsC_93, "EllipticArc"),
          :schema_basetype => XSD::QName.new(NsC_93, "Segment"),
          :schema_element => [
            ["fromPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "FromPoint")]],
            ["toPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "ToPoint")]],
            ["ellipseStd", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "EllipseStd")]],
            ["centerPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "CenterPoint")]],
            ["rotation", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Rotation")]],
            ["minorMajorRatio", ["SOAP::SOAPDouble", XSD::QName.new(nil, "MinorMajorRatio")]],
            ["isCounterClockWise", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsCounterClockWise")]],
            ["isMinor", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsMinor")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::CircularArc,
          :schema_type => XSD::QName.new(NsC_93, "CircularArc"),
          :schema_basetype => XSD::QName.new(NsC_93, "Segment"),
          :schema_element => [
            ["fromPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "FromPoint")]],
            ["toPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "ToPoint")]],
            ["centerPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "CenterPoint")]],
            ["fromAngle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "FromAngle")], [0, 1]],
            ["toAngle", ["SOAP::SOAPDouble", XSD::QName.new(nil, "ToAngle")], [0, 1]],
            ["isCounterClockwise", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsCounterClockwise")]],
            ["isMinor", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsMinor")]],
            ["isLine", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsLine")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::BezierCurve,
          :schema_type => XSD::QName.new(NsC_93, "BezierCurve"),
          :schema_basetype => XSD::QName.new(NsC_93, "Segment"),
          :schema_element => [
            ["fromPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "FromPoint")]],
            ["toPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "ToPoint")]],
            ["degree", ["SOAP::SOAPInt", XSD::QName.new(nil, "Degree")]],
            ["controlPointArray", ["ESRI::Soap::MapServer::ArrayOfPoint", XSD::QName.new(nil, "ControlPointArray")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::Path,
          :schema_type => XSD::QName.new(NsC_93, "Path"),
          :schema_basetype => XSD::QName.new(NsC_93, "Curve"),
          :schema_element => [
            ["pointArray", ["ESRI::Soap::MapServer::ArrayOfPoint", XSD::QName.new(nil, "PointArray")], [0, 1]],
            ["segmentArray", ["ESRI::Soap::MapServer::ArrayOfSegment", XSD::QName.new(nil, "SegmentArray")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::Ring,
          :schema_type => XSD::QName.new(NsC_93, "Ring"),
          :schema_basetype => XSD::QName.new(NsC_93, "Path"),
          :schema_element => [
            ["pointArray", ["ESRI::Soap::MapServer::ArrayOfPoint", XSD::QName.new(nil, "PointArray")], [0, 1]],
            ["segmentArray", ["ESRI::Soap::MapServer::ArrayOfSegment", XSD::QName.new(nil, "SegmentArray")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::PolygonN,
          :schema_type => XSD::QName.new(NsC_93, "PolygonN"),
          :schema_basetype => XSD::QName.new(NsC_93, "Polygon"),
          :schema_element => [
            ["hasID", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasID")]],
            ["hasZ", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasZ")]],
            ["hasM", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasM")]],
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["ringArray", ["ESRI::Soap::MapServer::ArrayOfRing", XSD::QName.new(nil, "RingArray")]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::PolygonB,
          :schema_type => XSD::QName.new(NsC_93, "PolygonB"),
          :schema_basetype => XSD::QName.new(NsC_93, "Polygon"),
          :schema_element => [
            ["bytes", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Bytes")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::PolylineN,
          :schema_type => XSD::QName.new(NsC_93, "PolylineN"),
          :schema_basetype => XSD::QName.new(NsC_93, "Polyline"),
          :schema_element => [
            ["hasID", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasID")]],
            ["hasZ", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasZ")]],
            ["hasM", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasM")]],
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")], [0, 1]],
            ["pathArray", ["ESRI::Soap::MapServer::ArrayOfPath", XSD::QName.new(nil, "PathArray")]],
            ["spatialReference", ["ESRI::Soap::MapServer::SpatialReference", XSD::QName.new(nil, "SpatialReference")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::PolylineB,
          :schema_type => XSD::QName.new(NsC_93, "PolylineB"),
          :schema_basetype => XSD::QName.new(NsC_93, "Polyline"),
          :schema_element => [
            ["bytes", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Bytes")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfPoint,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfPoint"),
          :schema_element => [
            ["point", ["ESRI::Soap::MapServer::Point[]", XSD::QName.new(nil, "Point")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfPath,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfPath"),
          :schema_element => [
            ["path", ["ESRI::Soap::MapServer::Path[]", XSD::QName.new(nil, "Path")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfRing,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfRing"),
          :schema_element => [
            ["ring", ["ESRI::Soap::MapServer::Ring[]", XSD::QName.new(nil, "Ring")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfSegment,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfSegment"),
          :schema_element => [
            ["segment", ["ESRI::Soap::MapServer::Segment[]", XSD::QName.new(nil, "Segment")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MultiPatchB,
          :schema_type => XSD::QName.new(NsC_93, "MultiPatchB"),
          :schema_basetype => XSD::QName.new(NsC_93, "MultiPatch"),
          :schema_element => [
            ["bytes", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Bytes")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::MultiPatchN,
          :schema_type => XSD::QName.new(NsC_93, "MultiPatchN"),
          :schema_basetype => XSD::QName.new(NsC_93, "MultiPatch"),
          :schema_element => [
            ["hasID", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasID")]],
            ["hasZ", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasZ")]],
            ["hasM", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HasM")]],
            ["extent", ["ESRI::Soap::MapServer::Envelope", XSD::QName.new(nil, "Extent")]],
            ["surfacePatchArray", ["ESRI::Soap::MapServer::ArrayOfSurfacePatch", XSD::QName.new(nil, "SurfacePatchArray")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ArrayOfSurfacePatch,
          :schema_type => XSD::QName.new(NsC_93, "ArrayOfSurfacePatch"),
          :schema_element => [
            ["surfacePatch", ["ESRI::Soap::MapServer::Geometry[]", XSD::QName.new(nil, "SurfacePatch")], [0, nil]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::TriangleFan,
          :schema_type => XSD::QName.new(NsC_93, "TriangleFan"),
          :schema_basetype => XSD::QName.new(NsC_93, "Geometry"),
          :schema_element => [
            ["pointArray", ["ESRI::Soap::MapServer::ArrayOfPoint", XSD::QName.new(nil, "PointArray")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::TriangleStrip,
          :schema_type => XSD::QName.new(NsC_93, "TriangleStrip"),
          :schema_basetype => XSD::QName.new(NsC_93, "Geometry"),
          :schema_element => [
            ["pointArray", ["ESRI::Soap::MapServer::ArrayOfPoint", XSD::QName.new(nil, "PointArray")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriIdentifyOption,
          :schema_type => XSD::QName.new(NsC_93, "esriIdentifyOption")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriFindOption,
          :schema_type => XSD::QName.new(NsC_93, "esriFindOption")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriImageFormat,
          :schema_type => XSD::QName.new(NsC_93, "esriImageFormat")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriScaleBarPos,
          :schema_type => XSD::QName.new(NsC_93, "esriScaleBarPos")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriVertPosEnum,
          :schema_type => XSD::QName.new(NsC_93, "esriVertPosEnum")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriScaleBarFrequency,
          :schema_type => XSD::QName.new(NsC_93, "esriScaleBarFrequency")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriScaleBarResizeHint,
          :schema_type => XSD::QName.new(NsC_93, "esriScaleBarResizeHint")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriImageReturnType,
          :schema_type => XSD::QName.new(NsC_93, "esriImageReturnType")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriCachedMapServiceType,
          :schema_type => XSD::QName.new(NsC_93, "esriCachedMapServiceType")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriQueryResultFormat,
          :schema_type => XSD::QName.new(NsC_93, "esriQueryResultFormat")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriSimpleFillStyle,
          :schema_type => XSD::QName.new(NsC_93, "esriSimpleFillStyle")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriSimpleLineStyle,
          :schema_type => XSD::QName.new(NsC_93, "esriSimpleLineStyle")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriSimpleMarkerStyle,
          :schema_type => XSD::QName.new(NsC_93, "esriSimpleMarkerStyle")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriTextHorizontalAlignment,
          :schema_type => XSD::QName.new(NsC_93, "esriTextHorizontalAlignment")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriTextVerticalAlignment,
          :schema_type => XSD::QName.new(NsC_93, "esriTextVerticalAlignment")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriTextPosition,
          :schema_type => XSD::QName.new(NsC_93, "esriTextPosition")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriTextCase,
          :schema_type => XSD::QName.new(NsC_93, "esriTextCase")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriTextDirection,
          :schema_type => XSD::QName.new(NsC_93, "esriTextDirection")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriMaskStyle,
          :schema_type => XSD::QName.new(NsC_93, "esriMaskStyle")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriFieldType,
          :schema_type => XSD::QName.new(NsC_93, "esriFieldType")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriMergePolicyType,
          :schema_type => XSD::QName.new(NsC_93, "esriMergePolicyType")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriSplitPolicyType,
          :schema_type => XSD::QName.new(NsC_93, "esriSplitPolicyType")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriSearchOrder,
          :schema_type => XSD::QName.new(NsC_93, "esriSearchOrder")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriSpatialRelEnum,
          :schema_type => XSD::QName.new(NsC_93, "esriSpatialRelEnum")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriUnits,
          :schema_type => XSD::QName.new(NsC_93, "esriUnits")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriRoundingOptionEnum,
          :schema_type => XSD::QName.new(NsC_93, "esriRoundingOptionEnum")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriNumericAlignmentEnum,
          :schema_type => XSD::QName.new(NsC_93, "esriNumericAlignmentEnum")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::EsriGeometryType,
          :schema_type => XSD::QName.new(NsC_93, "esriGeometryType")
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetDocumentInfo,
          :schema_name => XSD::QName.new(NsC_93, "GetDocumentInfo"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetDocumentInfoResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetDocumentInfoResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::PropertySet", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetMapCount,
          :schema_name => XSD::QName.new(NsC_93, "GetMapCount"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetMapCountResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetMapCountResponse"),
          :schema_element => [
            ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetMapName,
          :schema_name => XSD::QName.new(NsC_93, "GetMapName"),
          :schema_element => [
            ["index", ["SOAP::SOAPInt", XSD::QName.new(nil, "Index")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetMapNameResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetMapNameResponse"),
          :schema_element => [
            ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetDefaultMapName,
          :schema_name => XSD::QName.new(NsC_93, "GetDefaultMapName"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetDefaultMapNameResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetDefaultMapNameResponse"),
          :schema_element => [
            ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetServerInfo,
          :schema_name => XSD::QName.new(NsC_93, "GetServerInfo"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetServerInfoResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetServerInfoResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::MapServerInfo", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ExportMapImage,
          :schema_name => XSD::QName.new(NsC_93, "ExportMapImage"),
          :schema_element => [
            ["mapDescription", ["ESRI::Soap::MapServer::MapDescription", XSD::QName.new(nil, "MapDescription")]],
            ["imageDescription", ["ESRI::Soap::MapServer::ImageDescription", XSD::QName.new(nil, "ImageDescription")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ExportMapImageResponse,
          :schema_name => XSD::QName.new(NsC_93, "ExportMapImageResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::MapImage", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ExportScaleBar,
          :schema_name => XSD::QName.new(NsC_93, "ExportScaleBar"),
          :schema_element => [
            ["scaleBar", ["ESRI::Soap::MapServer::ScaleBar", XSD::QName.new(nil, "ScaleBar")], [0, 1]],
            ["mapDescription", ["ESRI::Soap::MapServer::MapDescription", XSD::QName.new(nil, "MapDescription")]],
            ["mapDisplay", ["ESRI::Soap::MapServer::ImageDisplay", XSD::QName.new(nil, "MapDisplay")]],
            ["backGroundColor", ["ESRI::Soap::MapServer::Color", XSD::QName.new(nil, "BackGroundColor")], [0, 1]],
            ["imageDescription", ["ESRI::Soap::MapServer::ImageDescription", XSD::QName.new(nil, "ImageDescription")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ExportScaleBarResponse,
          :schema_name => XSD::QName.new(NsC_93, "ExportScaleBarResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::ImageResult", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::Find,
          :schema_name => XSD::QName.new(NsC_93, "Find"),
          :schema_element => [
            ["mapDescription", ["ESRI::Soap::MapServer::MapDescription", XSD::QName.new(nil, "MapDescription")]],
            ["mapImageDisplay", ["ESRI::Soap::MapServer::ImageDisplay", XSD::QName.new(nil, "MapImageDisplay")]],
            ["searchString", ["SOAP::SOAPString", XSD::QName.new(nil, "SearchString")]],
            ["contains", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Contains")]],
            ["searchFields", ["SOAP::SOAPString", XSD::QName.new(nil, "SearchFields")]],
            ["findOption", ["ESRI::Soap::MapServer::EsriFindOption", XSD::QName.new(nil, "FindOption")]],
            ["layerIDs", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "LayerIDs")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::FindResponse,
          :schema_name => XSD::QName.new(NsC_93, "FindResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::ArrayOfMapServerFindResult", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::Identify,
          :schema_name => XSD::QName.new(NsC_93, "Identify"),
          :schema_element => [
            ["mapDescription", ["ESRI::Soap::MapServer::MapDescription", XSD::QName.new(nil, "MapDescription")]],
            ["mapImageDisplay", ["ESRI::Soap::MapServer::ImageDisplay", XSD::QName.new(nil, "MapImageDisplay")]],
            ["searchShape", ["ESRI::Soap::MapServer::Geometry", XSD::QName.new(nil, "SearchShape")]],
            ["tolerance", ["SOAP::SOAPInt", XSD::QName.new(nil, "Tolerance")]],
            ["identifyOption", ["ESRI::Soap::MapServer::EsriIdentifyOption", XSD::QName.new(nil, "IdentifyOption")]],
            ["layerIDs", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "LayerIDs")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::IdentifyResponse,
          :schema_name => XSD::QName.new(NsC_93, "IdentifyResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::ArrayOfMapServerIdentifyResult", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryFeatureCount,
          :schema_name => XSD::QName.new(NsC_93, "QueryFeatureCount"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]],
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["queryFilter", ["ESRI::Soap::MapServer::QueryFilter", XSD::QName.new(nil, "QueryFilter")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryFeatureCountResponse,
          :schema_name => XSD::QName.new(NsC_93, "QueryFeatureCountResponse"),
          :schema_element => [
            ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryFeatureIDs,
          :schema_name => XSD::QName.new(NsC_93, "QueryFeatureIDs"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]],
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["queryFilter", ["ESRI::Soap::MapServer::QueryFilter", XSD::QName.new(nil, "QueryFilter")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryFeatureIDsResponse,
          :schema_name => XSD::QName.new(NsC_93, "QueryFeatureIDsResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::FIDSet", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryFeatureData,
          :schema_name => XSD::QName.new(NsC_93, "QueryFeatureData"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]],
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["queryFilter", ["ESRI::Soap::MapServer::QueryFilter", XSD::QName.new(nil, "QueryFilter")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryFeatureDataResponse,
          :schema_name => XSD::QName.new(NsC_93, "QueryFeatureDataResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::RecordSet", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryFeatureCount2,
          :schema_name => XSD::QName.new(NsC_93, "QueryFeatureCount2"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]],
            ["layerDescription", ["ESRI::Soap::MapServer::LayerDescription", XSD::QName.new(nil, "LayerDescription")]],
            ["queryFilter", ["ESRI::Soap::MapServer::QueryFilter", XSD::QName.new(nil, "QueryFilter")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryFeatureCount2Response,
          :schema_name => XSD::QName.new(NsC_93, "QueryFeatureCount2Response"),
          :schema_element => [
            ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryFeatureIDs2,
          :schema_name => XSD::QName.new(NsC_93, "QueryFeatureIDs2"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]],
            ["layerDescription", ["ESRI::Soap::MapServer::LayerDescription", XSD::QName.new(nil, "LayerDescription")]],
            ["queryFilter", ["ESRI::Soap::MapServer::QueryFilter", XSD::QName.new(nil, "QueryFilter")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryFeatureIDs2Response,
          :schema_name => XSD::QName.new(NsC_93, "QueryFeatureIDs2Response"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::FIDSet", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryFeatureData2,
          :schema_name => XSD::QName.new(NsC_93, "QueryFeatureData2"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]],
            ["layerDescription", ["ESRI::Soap::MapServer::LayerDescription", XSD::QName.new(nil, "LayerDescription")]],
            ["queryFilter", ["ESRI::Soap::MapServer::QueryFilter", XSD::QName.new(nil, "QueryFilter")]],
            ["queryResultOptions", ["ESRI::Soap::MapServer::QueryResultOptions", XSD::QName.new(nil, "QueryResultOptions")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryFeatureData2Response,
          :schema_name => XSD::QName.new(NsC_93, "QueryFeatureData2Response"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::QueryResult", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryHyperlinks,
          :schema_name => XSD::QName.new(NsC_93, "QueryHyperlinks"),
          :schema_element => [
            ["mapDescription", ["ESRI::Soap::MapServer::MapDescription", XSD::QName.new(nil, "MapDescription")]],
            ["mapImageDisplay", ["ESRI::Soap::MapServer::ImageDisplay", XSD::QName.new(nil, "MapImageDisplay")]],
            ["layerIDs", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "LayerIDs")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::QueryHyperlinksResponse,
          :schema_name => XSD::QName.new(NsC_93, "QueryHyperlinksResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::ArrayOfMapServerHyperlink", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ComputeScale,
          :schema_name => XSD::QName.new(NsC_93, "ComputeScale"),
          :schema_element => [
            ["mapDescription", ["ESRI::Soap::MapServer::MapDescription", XSD::QName.new(nil, "MapDescription")]],
            ["mapImageDisplay", ["ESRI::Soap::MapServer::ImageDisplay", XSD::QName.new(nil, "MapImageDisplay")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ComputeScaleResponse,
          :schema_name => XSD::QName.new(NsC_93, "ComputeScaleResponse"),
          :schema_element => [
            ["result", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ComputeDistance,
          :schema_name => XSD::QName.new(NsC_93, "ComputeDistance"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]],
            ["fromPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "FromPoint")]],
            ["toPoint", ["ESRI::Soap::MapServer::Point", XSD::QName.new(nil, "ToPoint")]],
            ["units", ["ESRI::Soap::MapServer::EsriUnits", XSD::QName.new(nil, "Units")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ComputeDistanceResponse,
          :schema_name => XSD::QName.new(NsC_93, "ComputeDistanceResponse"),
          :schema_element => [
            ["result", ["SOAP::SOAPDouble", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ToMapPoints,
          :schema_name => XSD::QName.new(NsC_93, "ToMapPoints"),
          :schema_element => [
            ["mapDescription", ["ESRI::Soap::MapServer::MapDescription", XSD::QName.new(nil, "MapDescription")]],
            ["mapImageDisplay", ["ESRI::Soap::MapServer::ImageDisplay", XSD::QName.new(nil, "MapImageDisplay")]],
            ["screenXValues", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "ScreenXValues")]],
            ["screenYValues", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "ScreenYValues")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::ToMapPointsResponse,
          :schema_name => XSD::QName.new(NsC_93, "ToMapPointsResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::Multipoint", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::FromMapPoints,
          :schema_name => XSD::QName.new(NsC_93, "FromMapPoints"),
          :schema_element => [
            ["mapDescription", ["ESRI::Soap::MapServer::MapDescription", XSD::QName.new(nil, "MapDescription")]],
            ["mapImageDisplay", ["ESRI::Soap::MapServer::ImageDisplay", XSD::QName.new(nil, "MapImageDisplay")]],
            ["mapPoints", ["ESRI::Soap::MapServer::Multipoint", XSD::QName.new(nil, "MapPoints")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::FromMapPointsResponse,
          :schema_name => XSD::QName.new(NsC_93, "FromMapPointsResponse"),
          :schema_element => [
            ["screenXValues", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "ScreenXValues")]],
            ["screenYValues", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "ScreenYValues")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetLegendInfo,
          :schema_name => XSD::QName.new(NsC_93, "GetLegendInfo"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]],
            ["layerIDs", ["ESRI::Soap::MapServer::ArrayOfInt", XSD::QName.new(nil, "LayerIDs")]],
            ["legendPatch", ["ESRI::Soap::MapServer::MapServerLegendPatch", XSD::QName.new(nil, "LegendPatch")]],
            ["imageType", ["ESRI::Soap::MapServer::ImageType", XSD::QName.new(nil, "ImageType")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetLegendInfoResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetLegendInfoResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::ArrayOfMapServerLegendInfo", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetSQLSyntaxInfo,
          :schema_name => XSD::QName.new(NsC_93, "GetSQLSyntaxInfo"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]],
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetSQLSyntaxInfoResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetSQLSyntaxInfoResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::SQLSyntaxInfo", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetSupportedImageReturnTypes,
          :schema_name => XSD::QName.new(NsC_93, "GetSupportedImageReturnTypes"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetSupportedImageReturnTypesResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetSupportedImageReturnTypesResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::EsriImageReturnType", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::IsFixedScaleMap,
          :schema_name => XSD::QName.new(NsC_93, "IsFixedScaleMap"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::IsFixedScaleMapResponse,
          :schema_name => XSD::QName.new(NsC_93, "IsFixedScaleMapResponse"),
          :schema_element => [
            ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::HasSingleFusedMapCache,
          :schema_name => XSD::QName.new(NsC_93, "HasSingleFusedMapCache"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::HasSingleFusedMapCacheResponse,
          :schema_name => XSD::QName.new(NsC_93, "HasSingleFusedMapCacheResponse"),
          :schema_element => [
            ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetTileCacheInfo,
          :schema_name => XSD::QName.new(NsC_93, "GetTileCacheInfo"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetTileCacheInfoResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetTileCacheInfoResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::TileCacheInfo", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetMapTile,
          :schema_name => XSD::QName.new(NsC_93, "GetMapTile"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]],
            ["level", ["SOAP::SOAPInt", XSD::QName.new(nil, "Level")]],
            ["row", ["SOAP::SOAPInt", XSD::QName.new(nil, "Row")]],
            ["column", ["SOAP::SOAPInt", XSD::QName.new(nil, "Column")]],
            ["format", ["SOAP::SOAPString", XSD::QName.new(nil, "Format")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetMapTileResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetMapTileResponse"),
          :schema_element => [
            ["result", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::HasLayerCache,
          :schema_name => XSD::QName.new(NsC_93, "HasLayerCache"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]],
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::HasLayerCacheResponse,
          :schema_name => XSD::QName.new(NsC_93, "HasLayerCacheResponse"),
          :schema_element => [
            ["result", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetLayerTile,
          :schema_name => XSD::QName.new(NsC_93, "GetLayerTile"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]],
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]],
            ["level", ["SOAP::SOAPInt", XSD::QName.new(nil, "Level")]],
            ["row", ["SOAP::SOAPInt", XSD::QName.new(nil, "Row")]],
            ["column", ["SOAP::SOAPInt", XSD::QName.new(nil, "Column")]],
            ["format", ["SOAP::SOAPString", XSD::QName.new(nil, "Format")], [0, 1]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetLayerTileResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetLayerTileResponse"),
          :schema_element => [
            ["result", ["SOAP::SOAPBase64", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetVirtualCacheDirectory,
          :schema_name => XSD::QName.new(NsC_93, "GetVirtualCacheDirectory"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]],
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetVirtualCacheDirectoryResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetVirtualCacheDirectoryResponse"),
          :schema_element => [
            ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetCacheName,
          :schema_name => XSD::QName.new(NsC_93, "GetCacheName"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]],
            ["layerID", ["SOAP::SOAPInt", XSD::QName.new(nil, "LayerID")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetCacheNameResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetCacheNameResponse"),
          :schema_element => [
            ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetTileImageInfo,
          :schema_name => XSD::QName.new(NsC_93, "GetTileImageInfo"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetTileImageInfoResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetTileImageInfoResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::TileImageInfo", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetCacheControlInfo,
          :schema_name => XSD::QName.new(NsC_93, "GetCacheControlInfo"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetCacheControlInfoResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetCacheControlInfoResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::CacheControlInfo", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetServiceConfigurationInfo,
          :schema_name => XSD::QName.new(NsC_93, "GetServiceConfigurationInfo"),
          :schema_element => []
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetServiceConfigurationInfoResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetServiceConfigurationInfoResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::PropertySet", XSD::QName.new(nil, "Result")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetCacheDescriptionInfo,
          :schema_name => XSD::QName.new(NsC_93, "GetCacheDescriptionInfo"),
          :schema_element => [
            ["mapName", ["SOAP::SOAPString", XSD::QName.new(nil, "MapName")]]
          ]
        )

        LiteralRegistry.register(
          :class => ESRI::Soap::MapServer::GetCacheDescriptionInfoResponse,
          :schema_name => XSD::QName.new(NsC_93, "GetCacheDescriptionInfoResponse"),
          :schema_element => [
            ["result", ["ESRI::Soap::MapServer::CacheDescriptionInfo", XSD::QName.new(nil, "Result")]]
          ]
        )
      end

    end
  end
end