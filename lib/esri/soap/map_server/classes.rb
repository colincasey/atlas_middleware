require 'xsd/qname'

module ESRI
  module Soap
    module MapServer
      # {http://www.esri.com/schemas/ArcGIS/9.3}TileCacheInfo
      #   spatialReference - ESRI::Soap::SpatialReference
      #   tileOrigin - ESRI::Soap::Point
      #   tileCols - SOAP::SOAPInt
      #   tileRows - SOAP::SOAPInt
      #   dPI - SOAP::SOAPInt
      #   lODInfos - ESRI::Soap::ArrayOfLODInfo
      class TileCacheInfo
        attr_accessor :spatialReference
        attr_accessor :tileOrigin
        attr_accessor :tileCols
        attr_accessor :tileRows
        attr_accessor :dPI
        attr_accessor :lODInfos

        def initialize(spatialReference = nil, tileOrigin = nil, tileCols = nil, tileRows = nil, dPI = nil, lODInfos = nil)
          @spatialReference = spatialReference
          @tileOrigin = tileOrigin
          @tileCols = tileCols
          @tileRows = tileRows
          @dPI = dPI
          @lODInfos = lODInfos
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}LODInfo
      #   levelID - SOAP::SOAPInt
      #   scale - SOAP::SOAPDouble
      #   resolution - SOAP::SOAPDouble
      class LODInfo
        attr_accessor :levelID
        attr_accessor :scale
        attr_accessor :resolution

        def initialize(levelID = nil, scale = nil, resolution = nil)
          @levelID = levelID
          @scale = scale
          @resolution = resolution
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfLODInfo
      class ArrayOfLODInfo < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfGraphicElement
      class ArrayOfGraphicElement < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfLayerDescription
      class ArrayOfLayerDescription < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfMapLayerInfo
      class ArrayOfMapLayerInfo < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfMapServerBookmark
      class ArrayOfMapServerBookmark < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfMapServerFindResult
      class ArrayOfMapServerFindResult < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfMapServerHyperlink
      class ArrayOfMapServerHyperlink < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfMapServerIdentifyResult
      class ArrayOfMapServerIdentifyResult < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfMapServerLegendClass
      class ArrayOfMapServerLegendClass < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfMapServerLegendGroup
      class ArrayOfMapServerLegendGroup < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfMapServerLegendInfo
      class ArrayOfMapServerLegendInfo < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfMapServerRelationship
      class ArrayOfMapServerRelationship < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfMapServerRow
      class ArrayOfMapServerRow < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ImageDescription
      #   imageType - ESRI::Soap::ImageType
      #   imageDisplay - ESRI::Soap::ImageDisplay
      class ImageDescription
        attr_accessor :imageType
        attr_accessor :imageDisplay

        def initialize(imageType = nil, imageDisplay = nil)
          @imageType = imageType
          @imageDisplay = imageDisplay
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ImageDisplay
      #   imageHeight - SOAP::SOAPInt
      #   imageWidth - SOAP::SOAPInt
      #   imageDPI - SOAP::SOAPDouble
      #   transparentColor - ESRI::Soap::Color
      class ImageDisplay
        attr_accessor :imageHeight
        attr_accessor :imageWidth
        attr_accessor :imageDPI
        attr_accessor :transparentColor

        def initialize(imageHeight = nil, imageWidth = nil, imageDPI = nil, transparentColor = nil)
          @imageHeight = imageHeight
          @imageWidth = imageWidth
          @imageDPI = imageDPI
          @transparentColor = transparentColor
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ImageResult
      #   imageData - SOAP::SOAPBase64
      #   imageURL - SOAP::SOAPString
      #   imageHeight - SOAP::SOAPInt
      #   imageWidth - SOAP::SOAPInt
      #   imageDPI - SOAP::SOAPDouble
      class ImageResult
        attr_accessor :imageData
        attr_accessor :imageURL
        attr_accessor :imageHeight
        attr_accessor :imageWidth
        attr_accessor :imageDPI

        def initialize(imageData = nil, imageURL = nil, imageHeight = nil, imageWidth = nil, imageDPI = nil)
          @imageData = imageData
          @imageURL = imageURL
          @imageHeight = imageHeight
          @imageWidth = imageWidth
          @imageDPI = imageDPI
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ImageType
      #   imageFormat - ESRI::Soap::EsriImageFormat
      #   imageReturnType - ESRI::Soap::EsriImageReturnType
      class ImageType
        attr_accessor :imageFormat
        attr_accessor :imageReturnType

        def initialize(imageFormat = nil, imageReturnType = nil)
          @imageFormat = imageFormat
          @imageReturnType = imageReturnType
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}LayerDescription
      #   layerID - SOAP::SOAPInt
      #   visible - SOAP::SOAPBoolean
      #   showLabels - SOAP::SOAPBoolean
      #   scaleSymbols - SOAP::SOAPBoolean
      #   selectionFeatures - ESRI::Soap::ArrayOfInt
      #   selectionColor - ESRI::Soap::Color
      #   selectionSymbol - ESRI::Soap::C_Symbol
      #   setSelectionSymbol - SOAP::SOAPBoolean
      #   selectionBufferDistance - SOAP::SOAPDouble
      #   showSelectionBuffer - SOAP::SOAPBoolean
      #   definitionExpression - SOAP::SOAPString
      #   sourceID - SOAP::SOAPString
      #   selectionBufferSymbol - ESRI::Soap::FillSymbol
      #   layerResultOptions - ESRI::Soap::LayerResultOptions
      class LayerDescription
        attr_accessor :layerID
        attr_accessor :visible
        attr_accessor :showLabels
        attr_accessor :scaleSymbols
        attr_accessor :selectionFeatures
        attr_accessor :selectionColor
        attr_accessor :selectionSymbol
        attr_accessor :setSelectionSymbol
        attr_accessor :selectionBufferDistance
        attr_accessor :showSelectionBuffer
        attr_accessor :definitionExpression
        attr_accessor :sourceID
        attr_accessor :selectionBufferSymbol
        attr_accessor :layerResultOptions

        def initialize(layerID = nil, visible = nil, showLabels = nil, scaleSymbols = nil, selectionFeatures = nil, selectionColor = nil, selectionSymbol = nil, setSelectionSymbol = nil, selectionBufferDistance = nil, showSelectionBuffer = nil, definitionExpression = nil, sourceID = nil, selectionBufferSymbol = nil, layerResultOptions = nil)
          @layerID = layerID
          @visible = visible
          @showLabels = showLabels
          @scaleSymbols = scaleSymbols
          @selectionFeatures = selectionFeatures
          @selectionColor = selectionColor
          @selectionSymbol = selectionSymbol
          @setSelectionSymbol = setSelectionSymbol
          @selectionBufferDistance = selectionBufferDistance
          @showSelectionBuffer = showSelectionBuffer
          @definitionExpression = definitionExpression
          @sourceID = sourceID
          @selectionBufferSymbol = selectionBufferSymbol
          @layerResultOptions = layerResultOptions
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}LayerResultOptions
      #   includeGeometry - SOAP::SOAPBoolean
      #   geometryResultOptions - ESRI::Soap::GeometryResultOptions
      #   returnFieldNamesInResults - SOAP::SOAPBoolean
      #   formatValuesInResults - SOAP::SOAPBoolean
      class LayerResultOptions
        attr_accessor :includeGeometry
        attr_accessor :geometryResultOptions
        attr_accessor :returnFieldNamesInResults
        attr_accessor :formatValuesInResults

        def initialize(includeGeometry = nil, geometryResultOptions = nil, returnFieldNamesInResults = nil, formatValuesInResults = nil)
          @includeGeometry = includeGeometry
          @geometryResultOptions = geometryResultOptions
          @returnFieldNamesInResults = returnFieldNamesInResults
          @formatValuesInResults = formatValuesInResults
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapArea
      # abstract
      #   extent - ESRI::Soap::Envelope
      class MapArea
        attr_accessor :extent

        def initialize(extent = nil)
          @extent = extent
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}CenterAndScale
      #   extent - ESRI::Soap::Envelope
      #   center - ESRI::Soap::Point
      #   scale - SOAP::SOAPDouble
      #   dPI - SOAP::SOAPDouble
      #   devBottom - SOAP::SOAPInt
      #   devLeft - SOAP::SOAPInt
      #   devTop - SOAP::SOAPInt
      #   devRight - SOAP::SOAPInt
      class CenterAndScale < MapArea
        attr_accessor :extent
        attr_accessor :center
        attr_accessor :scale
        attr_accessor :dPI
        attr_accessor :devBottom
        attr_accessor :devLeft
        attr_accessor :devTop
        attr_accessor :devRight

        def initialize(extent = nil, center = nil, scale = nil, dPI = nil, devBottom = nil, devLeft = nil, devTop = nil, devRight = nil)
          @extent = extent
          @center = center
          @scale = scale
          @dPI = dPI
          @devBottom = devBottom
          @devLeft = devLeft
          @devTop = devTop
          @devRight = devRight
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}CenterAndSize
      #   extent - ESRI::Soap::Envelope
      #   center - ESRI::Soap::Point
      #   height - SOAP::SOAPDouble
      #   width - SOAP::SOAPDouble
      #   units - SOAP::SOAPString
      class CenterAndSize < MapArea
        attr_accessor :extent
        attr_accessor :center
        attr_accessor :height
        attr_accessor :width
        attr_accessor :units

        def initialize(extent = nil, center = nil, height = nil, width = nil, units = nil)
          @extent = extent
          @center = center
          @height = height
          @width = width
          @units = units
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}FeatureExtent
      #   extent - ESRI::Soap::Envelope
      #   defaultScale - SOAP::SOAPDouble
      #   expandRatio - SOAP::SOAPDouble
      #   featureIDs - ESRI::Soap::ArrayOfInt
      #   layerID - SOAP::SOAPInt
      #   mapName - SOAP::SOAPString
      class FeatureExtent < MapArea
        attr_accessor :extent
        attr_accessor :defaultScale
        attr_accessor :expandRatio
        attr_accessor :featureIDs
        attr_accessor :layerID
        attr_accessor :mapName

        def initialize(extent = nil, defaultScale = nil, expandRatio = nil, featureIDs = nil, layerID = nil, mapName = nil)
          @extent = extent
          @defaultScale = defaultScale
          @expandRatio = expandRatio
          @featureIDs = featureIDs
          @layerID = layerID
          @mapName = mapName
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapExtent
      #   extent - ESRI::Soap::Envelope
      class MapExtent < MapArea
        attr_accessor :extent

        def initialize(extent = nil)
          @extent = extent
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapServerBookmark
      #   extent - ESRI::Soap::Envelope
      #   name - SOAP::SOAPString
      class MapServerBookmark < MapArea
        attr_accessor :extent
        attr_accessor :name

        def initialize(extent = nil, name = nil)
          @extent = extent
          @name = name
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapDescription
      #   name - SOAP::SOAPString
      #   mapArea - ESRI::Soap::MapArea
      #   layerDescriptions - ESRI::Soap::ArrayOfLayerDescription
      #   rotation - SOAP::SOAPDouble
      #   spatialReference - ESRI::Soap::SpatialReference
      #   transparentColor - ESRI::Soap::Color
      #   selectionColor - ESRI::Soap::Color
      #   backgroundSymbol - ESRI::Soap::FillSymbol
      #   customGraphics - ESRI::Soap::ArrayOfGraphicElement
      #   geoTransformation - ESRI::Soap::GeoTransformation
      class MapDescription
        attr_accessor :name
        attr_accessor :mapArea
        attr_accessor :layerDescriptions
        attr_accessor :rotation
        attr_accessor :spatialReference
        attr_accessor :transparentColor
        attr_accessor :selectionColor
        attr_accessor :backgroundSymbol
        attr_accessor :customGraphics
        attr_accessor :geoTransformation

        def initialize(name = nil, mapArea = nil, layerDescriptions = nil, rotation = nil, spatialReference = nil, transparentColor = nil, selectionColor = nil, backgroundSymbol = nil, customGraphics = nil, geoTransformation = nil)
          @name = name
          @mapArea = mapArea
          @layerDescriptions = layerDescriptions
          @rotation = rotation
          @spatialReference = spatialReference
          @transparentColor = transparentColor
          @selectionColor = selectionColor
          @backgroundSymbol = backgroundSymbol
          @customGraphics = customGraphics
          @geoTransformation = geoTransformation
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapImage
      #   imageData - SOAP::SOAPBase64
      #   imageURL - SOAP::SOAPString
      #   extent - ESRI::Soap::Envelope
      #   visibleLayerIDs - ESRI::Soap::ArrayOfInt
      #   mapScale - SOAP::SOAPDouble
      #   imageHeight - SOAP::SOAPInt
      #   imageWidth - SOAP::SOAPInt
      #   imageDPI - SOAP::SOAPDouble
      class MapImage
        attr_accessor :imageData
        attr_accessor :imageURL
        attr_accessor :extent
        attr_accessor :visibleLayerIDs
        attr_accessor :mapScale
        attr_accessor :imageHeight
        attr_accessor :imageWidth
        attr_accessor :imageDPI

        def initialize(imageData = nil, imageURL = nil, extent = nil, visibleLayerIDs = nil, mapScale = nil, imageHeight = nil, imageWidth = nil, imageDPI = nil)
          @imageData = imageData
          @imageURL = imageURL
          @extent = extent
          @visibleLayerIDs = visibleLayerIDs
          @mapScale = mapScale
          @imageHeight = imageHeight
          @imageWidth = imageWidth
          @imageDPI = imageDPI
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapLayerInfo
      #   layerID - SOAP::SOAPInt
      #   name - SOAP::SOAPString
      #   description - SOAP::SOAPString
      #   layerType - SOAP::SOAPString
      #   sourceDescription - SOAP::SOAPString
      #   hasLabels - SOAP::SOAPBoolean
      #   canSelect - SOAP::SOAPBoolean
      #   canScaleSymbols - SOAP::SOAPBoolean
      #   minScale - SOAP::SOAPDouble
      #   maxScale - SOAP::SOAPDouble
      #   extent - ESRI::Soap::Envelope
      #   hasHyperlinks - SOAP::SOAPBoolean
      #   hasAttributes - SOAP::SOAPBoolean
      #   canIdentify - SOAP::SOAPBoolean
      #   canFind - SOAP::SOAPBoolean
      #   isFeatureLayer - SOAP::SOAPBoolean
      #   fields - ESRI::Soap::Fields
      #   displayField - SOAP::SOAPString
      #   iDField - SOAP::SOAPString
      #   isComposite - SOAP::SOAPBoolean
      #   subLayerIDs - ESRI::Soap::ArrayOfInt
      #   parentLayerID - SOAP::SOAPInt
      #   fieldAliases - ESRI::Soap::ArrayOfString
      #   copyrightText - SOAP::SOAPString
      class MapLayerInfo
        attr_accessor :layerID
        attr_accessor :name
        attr_accessor :description
        attr_accessor :layerType
        attr_accessor :sourceDescription
        attr_accessor :hasLabels
        attr_accessor :canSelect
        attr_accessor :canScaleSymbols
        attr_accessor :minScale
        attr_accessor :maxScale
        attr_accessor :extent
        attr_accessor :hasHyperlinks
        attr_accessor :hasAttributes
        attr_accessor :canIdentify
        attr_accessor :canFind
        attr_accessor :isFeatureLayer
        attr_accessor :fields
        attr_accessor :displayField
        attr_accessor :iDField
        attr_accessor :isComposite
        attr_accessor :subLayerIDs
        attr_accessor :parentLayerID
        attr_accessor :fieldAliases
        attr_accessor :copyrightText

        def initialize(layerID = nil, name = nil, description = nil, layerType = nil, sourceDescription = nil, hasLabels = nil, canSelect = nil, canScaleSymbols = nil, minScale = nil, maxScale = nil, extent = nil, hasHyperlinks = nil, hasAttributes = nil, canIdentify = nil, canFind = nil, isFeatureLayer = nil, fields = nil, displayField = nil, iDField = nil, isComposite = nil, subLayerIDs = nil, parentLayerID = nil, fieldAliases = nil, copyrightText = nil)
          @layerID = layerID
          @name = name
          @description = description
          @layerType = layerType
          @sourceDescription = sourceDescription
          @hasLabels = hasLabels
          @canSelect = canSelect
          @canScaleSymbols = canScaleSymbols
          @minScale = minScale
          @maxScale = maxScale
          @extent = extent
          @hasHyperlinks = hasHyperlinks
          @hasAttributes = hasAttributes
          @canIdentify = canIdentify
          @canFind = canFind
          @isFeatureLayer = isFeatureLayer
          @fields = fields
          @displayField = displayField
          @iDField = iDField
          @isComposite = isComposite
          @subLayerIDs = subLayerIDs
          @parentLayerID = parentLayerID
          @fieldAliases = fieldAliases
          @copyrightText = copyrightText
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapServerFindResult
      #   value - SOAP::SOAPString
      #   layerID - SOAP::SOAPInt
      #   featureID - SOAP::SOAPInt
      #   fieldName - SOAP::SOAPString
      #   shape - ESRI::Soap::Geometry
      #   properties - ESRI::Soap::PropertySet
      class MapServerFindResult
        attr_accessor :value
        attr_accessor :layerID
        attr_accessor :featureID
        attr_accessor :fieldName
        attr_accessor :shape
        attr_accessor :properties

        def initialize(value = nil, layerID = nil, featureID = nil, fieldName = nil, shape = nil, properties = nil)
          @value = value
          @layerID = layerID
          @featureID = featureID
          @fieldName = fieldName
          @shape = shape
          @properties = properties
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapServerHyperlink
      #   location - ESRI::Soap::Geometry
      #   uRL - SOAP::SOAPString
      class MapServerHyperlink
        attr_accessor :location
        attr_accessor :uRL

        def initialize(location = nil, uRL = nil)
          @location = location
          @uRL = uRL
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapServerIdentifyResult
      #   layerID - SOAP::SOAPInt
      #   name - SOAP::SOAPString
      #   properties - ESRI::Soap::PropertySet
      #   shape - ESRI::Soap::Geometry
      #   relationships - ESRI::Soap::ArrayOfMapServerRelationship
      class MapServerIdentifyResult
        attr_accessor :layerID
        attr_accessor :name
        attr_accessor :properties
        attr_accessor :shape
        attr_accessor :relationships

        def initialize(layerID = nil, name = nil, properties = nil, shape = nil, relationships = nil)
          @layerID = layerID
          @name = name
          @properties = properties
          @shape = shape
          @relationships = relationships
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapServerInfo
      #   name - SOAP::SOAPString
      #   description - SOAP::SOAPString
      #   fullExtent - ESRI::Soap::Envelope
      #   extent - ESRI::Soap::Envelope
      #   spatialReference - ESRI::Soap::SpatialReference
      #   mapLayerInfos - ESRI::Soap::ArrayOfMapLayerInfo
      #   backgroundColor - ESRI::Soap::Color
      #   bookmarks - ESRI::Soap::ArrayOfMapServerBookmark
      #   defaultMapDescription - ESRI::Soap::MapDescription
      #   units - ESRI::Soap::EsriUnits
      #   supportedImageReturnTypes - ESRI::Soap::EsriImageReturnType
      #   backgroundSymbol - ESRI::Soap::FillSymbol
      #   copyrightText - SOAP::SOAPString
      class MapServerInfo
        attr_accessor :name
        attr_accessor :description
        attr_accessor :fullExtent
        attr_accessor :extent
        attr_accessor :spatialReference
        attr_accessor :mapLayerInfos
        attr_accessor :backgroundColor
        attr_accessor :bookmarks
        attr_accessor :defaultMapDescription
        attr_accessor :units
        attr_accessor :supportedImageReturnTypes
        attr_accessor :backgroundSymbol
        attr_accessor :copyrightText

        def initialize(name = nil, description = nil, fullExtent = nil, extent = nil, spatialReference = nil, mapLayerInfos = nil, backgroundColor = nil, bookmarks = nil, defaultMapDescription = nil, units = nil, supportedImageReturnTypes = nil, backgroundSymbol = nil, copyrightText = nil)
          @name = name
          @description = description
          @fullExtent = fullExtent
          @extent = extent
          @spatialReference = spatialReference
          @mapLayerInfos = mapLayerInfos
          @backgroundColor = backgroundColor
          @bookmarks = bookmarks
          @defaultMapDescription = defaultMapDescription
          @units = units
          @supportedImageReturnTypes = supportedImageReturnTypes
          @backgroundSymbol = backgroundSymbol
          @copyrightText = copyrightText
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapServerLegendClass
      #   label - SOAP::SOAPString
      #   description - SOAP::SOAPString
      #   symbolImage - ESRI::Soap::ImageResult
      #   transparentColor - ESRI::Soap::Color
      class MapServerLegendClass
        attr_accessor :label
        attr_accessor :description
        attr_accessor :symbolImage
        attr_accessor :transparentColor

        def initialize(label = nil, description = nil, symbolImage = nil, transparentColor = nil)
          @label = label
          @description = description
          @symbolImage = symbolImage
          @transparentColor = transparentColor
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapServerLegendGroup
      #   heading - SOAP::SOAPString
      #   legendClasses - ESRI::Soap::ArrayOfMapServerLegendClass
      class MapServerLegendGroup
        attr_accessor :heading
        attr_accessor :legendClasses

        def initialize(heading = nil, legendClasses = nil)
          @heading = heading
          @legendClasses = legendClasses
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapServerLegendInfo
      #   layerID - SOAP::SOAPInt
      #   name - SOAP::SOAPString
      #   legendGroups - ESRI::Soap::ArrayOfMapServerLegendGroup
      class MapServerLegendInfo
        attr_accessor :layerID
        attr_accessor :name
        attr_accessor :legendGroups

        def initialize(layerID = nil, name = nil, legendGroups = nil)
          @layerID = layerID
          @name = name
          @legendGroups = legendGroups
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapServerLegendPatch
      #   width - SOAP::SOAPDouble
      #   height - SOAP::SOAPDouble
      #   imageDPI - SOAP::SOAPDouble
      #   linePatch - ESRI::Soap::LinePatch
      #   areaPatch - ESRI::Soap::AreaPatch
      class MapServerLegendPatch
        attr_accessor :width
        attr_accessor :height
        attr_accessor :imageDPI
        attr_accessor :linePatch
        attr_accessor :areaPatch

        def initialize(width = nil, height = nil, imageDPI = nil, linePatch = nil, areaPatch = nil)
          @width = width
          @height = height
          @imageDPI = imageDPI
          @linePatch = linePatch
          @areaPatch = areaPatch
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapServerRelationship
      #   name - SOAP::SOAPString
      #   rows - ESRI::Soap::ArrayOfMapServerRow
      class MapServerRelationship
        attr_accessor :name
        attr_accessor :rows

        def initialize(name = nil, rows = nil)
          @name = name
          @rows = rows
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MapServerRow
      #   name - SOAP::SOAPString
      #   properties - ESRI::Soap::PropertySet
      #   relationships - ESRI::Soap::ArrayOfMapServerRelationship
      class MapServerRow
        attr_accessor :name
        attr_accessor :properties
        attr_accessor :relationships

        def initialize(name = nil, properties = nil, relationships = nil)
          @name = name
          @properties = properties
          @relationships = relationships
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ScaleBar
      # abstract
      #   barHeight - SOAP::SOAPDouble
      #   division - SOAP::SOAPDouble
      #   divisions - SOAP::SOAPShort
      #   divisionsBeforeZero - SOAP::SOAPShort
      #   subdivisions - SOAP::SOAPShort
      #   units - ESRI::Soap::EsriUnits
      #   unitLabel - SOAP::SOAPString
      #   unitLabelPosition - ESRI::Soap::EsriScaleBarPos
      #   unitLabelGap - SOAP::SOAPDouble
      #   unitLabelSymbol - ESRI::Soap::TextSymbol
      #   labelFrequency - ESRI::Soap::EsriScaleBarFrequency
      #   labelPosition - ESRI::Soap::EsriVertPosEnum
      #   labelGap - SOAP::SOAPDouble
      #   labelSymbol - ESRI::Soap::TextSymbol
      #   numberFormat - ESRI::Soap::NumericFormat
      #   resizeHint - ESRI::Soap::EsriScaleBarResizeHint
      class ScaleBar
        attr_accessor :barHeight
        attr_accessor :division
        attr_accessor :divisions
        attr_accessor :divisionsBeforeZero
        attr_accessor :subdivisions
        attr_accessor :units
        attr_accessor :unitLabel
        attr_accessor :unitLabelPosition
        attr_accessor :unitLabelGap
        attr_accessor :unitLabelSymbol
        attr_accessor :labelFrequency
        attr_accessor :labelPosition
        attr_accessor :labelGap
        attr_accessor :labelSymbol
        attr_accessor :numberFormat
        attr_accessor :resizeHint

        def initialize(barHeight = nil, division = nil, divisions = nil, divisionsBeforeZero = nil, subdivisions = nil, units = nil, unitLabel = nil, unitLabelPosition = nil, unitLabelGap = nil, unitLabelSymbol = nil, labelFrequency = nil, labelPosition = nil, labelGap = nil, labelSymbol = nil, numberFormat = nil, resizeHint = nil)
          @barHeight = barHeight
          @division = division
          @divisions = divisions
          @divisionsBeforeZero = divisionsBeforeZero
          @subdivisions = subdivisions
          @units = units
          @unitLabel = unitLabel
          @unitLabelPosition = unitLabelPosition
          @unitLabelGap = unitLabelGap
          @unitLabelSymbol = unitLabelSymbol
          @labelFrequency = labelFrequency
          @labelPosition = labelPosition
          @labelGap = labelGap
          @labelSymbol = labelSymbol
          @numberFormat = numberFormat
          @resizeHint = resizeHint
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}AlternatingScaleBar
      #   barHeight - SOAP::SOAPDouble
      #   division - SOAP::SOAPDouble
      #   divisions - SOAP::SOAPShort
      #   divisionsBeforeZero - SOAP::SOAPShort
      #   subdivisions - SOAP::SOAPShort
      #   units - ESRI::Soap::EsriUnits
      #   unitLabel - SOAP::SOAPString
      #   unitLabelPosition - ESRI::Soap::EsriScaleBarPos
      #   unitLabelGap - SOAP::SOAPDouble
      #   unitLabelSymbol - ESRI::Soap::TextSymbol
      #   labelFrequency - ESRI::Soap::EsriScaleBarFrequency
      #   labelPosition - ESRI::Soap::EsriVertPosEnum
      #   labelGap - SOAP::SOAPDouble
      #   labelSymbol - ESRI::Soap::TextSymbol
      #   numberFormat - ESRI::Soap::NumericFormat
      #   resizeHint - ESRI::Soap::EsriScaleBarResizeHint
      #   fillSymbol1 - ESRI::Soap::FillSymbol
      #   fillSymbol2 - ESRI::Soap::FillSymbol
      #   divisionMarkSymbol - ESRI::Soap::LineSymbol
      #   subdivisionMarkSymbol - ESRI::Soap::LineSymbol
      #   divisionMarkHeight - SOAP::SOAPDouble
      #   subdivisionMarkHeight - SOAP::SOAPDouble
      #   markPosition - ESRI::Soap::EsriVertPosEnum
      #   markFrequency - ESRI::Soap::EsriScaleBarFrequency
      class AlternatingScaleBar < ScaleBar
        attr_accessor :barHeight
        attr_accessor :division
        attr_accessor :divisions
        attr_accessor :divisionsBeforeZero
        attr_accessor :subdivisions
        attr_accessor :units
        attr_accessor :unitLabel
        attr_accessor :unitLabelPosition
        attr_accessor :unitLabelGap
        attr_accessor :unitLabelSymbol
        attr_accessor :labelFrequency
        attr_accessor :labelPosition
        attr_accessor :labelGap
        attr_accessor :labelSymbol
        attr_accessor :numberFormat
        attr_accessor :resizeHint
        attr_accessor :fillSymbol1
        attr_accessor :fillSymbol2
        attr_accessor :divisionMarkSymbol
        attr_accessor :subdivisionMarkSymbol
        attr_accessor :divisionMarkHeight
        attr_accessor :subdivisionMarkHeight
        attr_accessor :markPosition
        attr_accessor :markFrequency

        def initialize(barHeight = nil, division = nil, divisions = nil, divisionsBeforeZero = nil, subdivisions = nil, units = nil, unitLabel = nil, unitLabelPosition = nil, unitLabelGap = nil, unitLabelSymbol = nil, labelFrequency = nil, labelPosition = nil, labelGap = nil, labelSymbol = nil, numberFormat = nil, resizeHint = nil, fillSymbol1 = nil, fillSymbol2 = nil, divisionMarkSymbol = nil, subdivisionMarkSymbol = nil, divisionMarkHeight = nil, subdivisionMarkHeight = nil, markPosition = nil, markFrequency = nil)
          @barHeight = barHeight
          @division = division
          @divisions = divisions
          @divisionsBeforeZero = divisionsBeforeZero
          @subdivisions = subdivisions
          @units = units
          @unitLabel = unitLabel
          @unitLabelPosition = unitLabelPosition
          @unitLabelGap = unitLabelGap
          @unitLabelSymbol = unitLabelSymbol
          @labelFrequency = labelFrequency
          @labelPosition = labelPosition
          @labelGap = labelGap
          @labelSymbol = labelSymbol
          @numberFormat = numberFormat
          @resizeHint = resizeHint
          @fillSymbol1 = fillSymbol1
          @fillSymbol2 = fillSymbol2
          @divisionMarkSymbol = divisionMarkSymbol
          @subdivisionMarkSymbol = subdivisionMarkSymbol
          @divisionMarkHeight = divisionMarkHeight
          @subdivisionMarkHeight = subdivisionMarkHeight
          @markPosition = markPosition
          @markFrequency = markFrequency
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}SingleDivisionScaleBar
      #   barHeight - SOAP::SOAPDouble
      #   division - SOAP::SOAPDouble
      #   divisions - SOAP::SOAPShort
      #   divisionsBeforeZero - SOAP::SOAPShort
      #   subdivisions - SOAP::SOAPShort
      #   units - ESRI::Soap::EsriUnits
      #   unitLabel - SOAP::SOAPString
      #   unitLabelPosition - ESRI::Soap::EsriScaleBarPos
      #   unitLabelGap - SOAP::SOAPDouble
      #   unitLabelSymbol - ESRI::Soap::TextSymbol
      #   labelFrequency - ESRI::Soap::EsriScaleBarFrequency
      #   labelPosition - ESRI::Soap::EsriVertPosEnum
      #   labelGap - SOAP::SOAPDouble
      #   labelSymbol - ESRI::Soap::TextSymbol
      #   numberFormat - ESRI::Soap::NumericFormat
      #   resizeHint - ESRI::Soap::EsriScaleBarResizeHint
      #   fillSymbol - ESRI::Soap::FillSymbol
      #   divisionMarkSymbol - ESRI::Soap::LineSymbol
      #   subdivisionMarkSymbol - ESRI::Soap::LineSymbol
      #   divisionMarkHeight - SOAP::SOAPDouble
      #   subdivisionMarkHeight - SOAP::SOAPDouble
      #   markPosition - ESRI::Soap::EsriVertPosEnum
      #   markFrequency - ESRI::Soap::EsriScaleBarFrequency
      class SingleDivisionScaleBar < ScaleBar
        attr_accessor :barHeight
        attr_accessor :division
        attr_accessor :divisions
        attr_accessor :divisionsBeforeZero
        attr_accessor :subdivisions
        attr_accessor :units
        attr_accessor :unitLabel
        attr_accessor :unitLabelPosition
        attr_accessor :unitLabelGap
        attr_accessor :unitLabelSymbol
        attr_accessor :labelFrequency
        attr_accessor :labelPosition
        attr_accessor :labelGap
        attr_accessor :labelSymbol
        attr_accessor :numberFormat
        attr_accessor :resizeHint
        attr_accessor :fillSymbol
        attr_accessor :divisionMarkSymbol
        attr_accessor :subdivisionMarkSymbol
        attr_accessor :divisionMarkHeight
        attr_accessor :subdivisionMarkHeight
        attr_accessor :markPosition
        attr_accessor :markFrequency

        def initialize(barHeight = nil, division = nil, divisions = nil, divisionsBeforeZero = nil, subdivisions = nil, units = nil, unitLabel = nil, unitLabelPosition = nil, unitLabelGap = nil, unitLabelSymbol = nil, labelFrequency = nil, labelPosition = nil, labelGap = nil, labelSymbol = nil, numberFormat = nil, resizeHint = nil, fillSymbol = nil, divisionMarkSymbol = nil, subdivisionMarkSymbol = nil, divisionMarkHeight = nil, subdivisionMarkHeight = nil, markPosition = nil, markFrequency = nil)
          @barHeight = barHeight
          @division = division
          @divisions = divisions
          @divisionsBeforeZero = divisionsBeforeZero
          @subdivisions = subdivisions
          @units = units
          @unitLabel = unitLabel
          @unitLabelPosition = unitLabelPosition
          @unitLabelGap = unitLabelGap
          @unitLabelSymbol = unitLabelSymbol
          @labelFrequency = labelFrequency
          @labelPosition = labelPosition
          @labelGap = labelGap
          @labelSymbol = labelSymbol
          @numberFormat = numberFormat
          @resizeHint = resizeHint
          @fillSymbol = fillSymbol
          @divisionMarkSymbol = divisionMarkSymbol
          @subdivisionMarkSymbol = subdivisionMarkSymbol
          @divisionMarkHeight = divisionMarkHeight
          @subdivisionMarkHeight = subdivisionMarkHeight
          @markPosition = markPosition
          @markFrequency = markFrequency
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}SQLSyntaxInfo
      #   functionNames - ESRI::Soap::PropertySet
      #   specialCharacters - ESRI::Soap::PropertySet
      #   supportedPredicates - ESRI::Soap::ArrayOfString
      #   supportedClauses - ESRI::Soap::ArrayOfString
      #   identifierCase - SOAP::SOAPBoolean
      #   delimitedIdentifierCase - SOAP::SOAPBoolean
      #   stringComparisonCase - SOAP::SOAPBoolean
      #   keywords - ESRI::Soap::ArrayOfString
      #   invalidCharacters - SOAP::SOAPString
      #   invalidStartingCharacters - SOAP::SOAPString
      class SQLSyntaxInfo
        attr_accessor :functionNames
        attr_accessor :specialCharacters
        attr_accessor :supportedPredicates
        attr_accessor :supportedClauses
        attr_accessor :identifierCase
        attr_accessor :delimitedIdentifierCase
        attr_accessor :stringComparisonCase
        attr_accessor :keywords
        attr_accessor :invalidCharacters
        attr_accessor :invalidStartingCharacters

        def initialize(functionNames = nil, specialCharacters = nil, supportedPredicates = nil, supportedClauses = nil, identifierCase = nil, delimitedIdentifierCase = nil, stringComparisonCase = nil, keywords = nil, invalidCharacters = nil, invalidStartingCharacters = nil)
          @functionNames = functionNames
          @specialCharacters = specialCharacters
          @supportedPredicates = supportedPredicates
          @supportedClauses = supportedClauses
          @identifierCase = identifierCase
          @delimitedIdentifierCase = delimitedIdentifierCase
          @stringComparisonCase = stringComparisonCase
          @keywords = keywords
          @invalidCharacters = invalidCharacters
          @invalidStartingCharacters = invalidStartingCharacters
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Shadow
      # abstract
      class Shadow
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}SymbolShadow
      #   symbol - ESRI::Soap::LineSymbol
      #   cornerRounding - SOAP::SOAPShort
      #   horizontalOffset - SOAP::SOAPDouble
      #   verticalOffset - SOAP::SOAPDouble
      class SymbolShadow < Shadow
        attr_accessor :symbol
        attr_accessor :cornerRounding
        attr_accessor :horizontalOffset
        attr_accessor :verticalOffset

        def initialize(symbol = nil, cornerRounding = nil, horizontalOffset = nil, verticalOffset = nil)
          @symbol = symbol
          @cornerRounding = cornerRounding
          @horizontalOffset = horizontalOffset
          @verticalOffset = verticalOffset
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Background
      # abstract
      class Background
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}SymbolBackground
      #   horizontalGap - SOAP::SOAPDouble
      #   cornerRounding - SOAP::SOAPShort
      #   verticalGap - SOAP::SOAPDouble
      #   symbol - ESRI::Soap::FillSymbol
      class SymbolBackground < Background
        attr_accessor :horizontalGap
        attr_accessor :cornerRounding
        attr_accessor :verticalGap
        attr_accessor :symbol

        def initialize(horizontalGap = nil, cornerRounding = nil, verticalGap = nil, symbol = nil)
          @horizontalGap = horizontalGap
          @cornerRounding = cornerRounding
          @verticalGap = verticalGap
          @symbol = symbol
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Border
      # abstract
      class Border
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}SymbolBorder
      #   horizontalGap - SOAP::SOAPDouble
      #   cornerRounding - SOAP::SOAPShort
      #   verticalGap - SOAP::SOAPDouble
      #   symbol - ESRI::Soap::LineSymbol
      class SymbolBorder < Border
        attr_accessor :horizontalGap
        attr_accessor :cornerRounding
        attr_accessor :verticalGap
        attr_accessor :symbol

        def initialize(horizontalGap = nil, cornerRounding = nil, verticalGap = nil, symbol = nil)
          @horizontalGap = horizontalGap
          @cornerRounding = cornerRounding
          @verticalGap = verticalGap
          @symbol = symbol
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Element
      # abstract
      class Element
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GraphicElement
      # abstract
      class GraphicElement < Element
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}LineElement
      #   name - SOAP::SOAPString
      #   type - SOAP::SOAPString
      #   autoTransform - SOAP::SOAPBoolean
      #   referenceScale - SOAP::SOAPDouble
      #   symbol - ESRI::Soap::C_Symbol
      #   line - ESRI::Soap::Geometry
      #   locked - SOAP::SOAPBoolean
      #   fixedAspectRatio - SOAP::SOAPBoolean
      class LineElement < GraphicElement
        attr_accessor :name
        attr_accessor :type
        attr_accessor :autoTransform
        attr_accessor :referenceScale
        attr_accessor :symbol
        attr_accessor :line
        attr_accessor :locked
        attr_accessor :fixedAspectRatio

        def initialize(name = nil, type = nil, autoTransform = nil, referenceScale = nil, symbol = nil, line = nil, locked = nil, fixedAspectRatio = nil)
          @name = name
          @type = type
          @autoTransform = autoTransform
          @referenceScale = referenceScale
          @symbol = symbol
          @line = line
          @locked = locked
          @fixedAspectRatio = fixedAspectRatio
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}CircleElement
      #   rectangle - ESRI::Soap::Geometry
      #   locked - SOAP::SOAPBoolean
      #   fixedAspectRatio - SOAP::SOAPBoolean
      #   name - SOAP::SOAPString
      #   type - SOAP::SOAPString
      #   autoTransform - SOAP::SOAPBoolean
      #   referenceScale - SOAP::SOAPDouble
      #   symbol - ESRI::Soap::C_Symbol
      class CircleElement < GraphicElement
        attr_accessor :rectangle
        attr_accessor :locked
        attr_accessor :fixedAspectRatio
        attr_accessor :name
        attr_accessor :type
        attr_accessor :autoTransform
        attr_accessor :referenceScale
        attr_accessor :symbol

        def initialize(rectangle = nil, locked = nil, fixedAspectRatio = nil, name = nil, type = nil, autoTransform = nil, referenceScale = nil, symbol = nil)
          @rectangle = rectangle
          @locked = locked
          @fixedAspectRatio = fixedAspectRatio
          @name = name
          @type = type
          @autoTransform = autoTransform
          @referenceScale = referenceScale
          @symbol = symbol
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}EllipseElement
      #   rectangle - ESRI::Soap::Geometry
      #   locked - SOAP::SOAPBoolean
      #   fixedAspectRatio - SOAP::SOAPBoolean
      #   name - SOAP::SOAPString
      #   type - SOAP::SOAPString
      #   autoTransform - SOAP::SOAPBoolean
      #   referenceScale - SOAP::SOAPDouble
      #   symbol - ESRI::Soap::C_Symbol
      class EllipseElement < GraphicElement
        attr_accessor :rectangle
        attr_accessor :locked
        attr_accessor :fixedAspectRatio
        attr_accessor :name
        attr_accessor :type
        attr_accessor :autoTransform
        attr_accessor :referenceScale
        attr_accessor :symbol

        def initialize(rectangle = nil, locked = nil, fixedAspectRatio = nil, name = nil, type = nil, autoTransform = nil, referenceScale = nil, symbol = nil)
          @rectangle = rectangle
          @locked = locked
          @fixedAspectRatio = fixedAspectRatio
          @name = name
          @type = type
          @autoTransform = autoTransform
          @referenceScale = referenceScale
          @symbol = symbol
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MarkerElement
      #   name - SOAP::SOAPString
      #   type - SOAP::SOAPString
      #   autoTransform - SOAP::SOAPBoolean
      #   referenceScale - SOAP::SOAPDouble
      #   symbol - ESRI::Soap::C_Symbol
      #   point - ESRI::Soap::Point
      #   locked - SOAP::SOAPBoolean
      class MarkerElement < GraphicElement
        attr_accessor :name
        attr_accessor :type
        attr_accessor :autoTransform
        attr_accessor :referenceScale
        attr_accessor :symbol
        attr_accessor :point
        attr_accessor :locked

        def initialize(name = nil, type = nil, autoTransform = nil, referenceScale = nil, symbol = nil, point = nil, locked = nil)
          @name = name
          @type = type
          @autoTransform = autoTransform
          @referenceScale = referenceScale
          @symbol = symbol
          @point = point
          @locked = locked
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ParagraphTextElement
      #   name - SOAP::SOAPString
      #   type - SOAP::SOAPString
      #   autoTransform - SOAP::SOAPBoolean
      #   referenceScale - SOAP::SOAPDouble
      #   text - SOAP::SOAPString
      #   scale - SOAP::SOAPDouble
      #   symbol - ESRI::Soap::C_Symbol
      #   textGeometry - ESRI::Soap::Geometry
      #   locked - SOAP::SOAPBoolean
      #   frameBorder - ESRI::Soap::Border
      #   frameBackground - ESRI::Soap::Background
      #   frameShadow - ESRI::Soap::Shadow
      #   columnGap - SOAP::SOAPDouble
      #   columnCount - SOAP::SOAPInt
      #   margin - SOAP::SOAPDouble
      class ParagraphTextElement < GraphicElement
        attr_accessor :name
        attr_accessor :type
        attr_accessor :autoTransform
        attr_accessor :referenceScale
        attr_accessor :text
        attr_accessor :scale
        attr_accessor :symbol
        attr_accessor :textGeometry
        attr_accessor :locked
        attr_accessor :frameBorder
        attr_accessor :frameBackground
        attr_accessor :frameShadow
        attr_accessor :columnGap
        attr_accessor :columnCount
        attr_accessor :margin

        def initialize(name = nil, type = nil, autoTransform = nil, referenceScale = nil, text = nil, scale = nil, symbol = nil, textGeometry = nil, locked = nil, frameBorder = nil, frameBackground = nil, frameShadow = nil, columnGap = nil, columnCount = nil, margin = nil)
          @name = name
          @type = type
          @autoTransform = autoTransform
          @referenceScale = referenceScale
          @text = text
          @scale = scale
          @symbol = symbol
          @textGeometry = textGeometry
          @locked = locked
          @frameBorder = frameBorder
          @frameBackground = frameBackground
          @frameShadow = frameShadow
          @columnGap = columnGap
          @columnCount = columnCount
          @margin = margin
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}PolygonElement
      #   name - SOAP::SOAPString
      #   type - SOAP::SOAPString
      #   autoTransform - SOAP::SOAPBoolean
      #   referenceScale - SOAP::SOAPDouble
      #   symbol - ESRI::Soap::C_Symbol
      #   polygon - ESRI::Soap::Geometry
      #   locked - SOAP::SOAPBoolean
      #   fixedAspectRatio - SOAP::SOAPBoolean
      class PolygonElement < GraphicElement
        attr_accessor :name
        attr_accessor :type
        attr_accessor :autoTransform
        attr_accessor :referenceScale
        attr_accessor :symbol
        attr_accessor :polygon
        attr_accessor :locked
        attr_accessor :fixedAspectRatio

        def initialize(name = nil, type = nil, autoTransform = nil, referenceScale = nil, symbol = nil, polygon = nil, locked = nil, fixedAspectRatio = nil)
          @name = name
          @type = type
          @autoTransform = autoTransform
          @referenceScale = referenceScale
          @symbol = symbol
          @polygon = polygon
          @locked = locked
          @fixedAspectRatio = fixedAspectRatio
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}RectangleElement
      #   rectangle - ESRI::Soap::Geometry
      #   locked - SOAP::SOAPBoolean
      #   fixedAspectRatio - SOAP::SOAPBoolean
      #   name - SOAP::SOAPString
      #   type - SOAP::SOAPString
      #   autoTransform - SOAP::SOAPBoolean
      #   referenceScale - SOAP::SOAPDouble
      #   symbol - ESRI::Soap::C_Symbol
      class RectangleElement < GraphicElement
        attr_accessor :rectangle
        attr_accessor :locked
        attr_accessor :fixedAspectRatio
        attr_accessor :name
        attr_accessor :type
        attr_accessor :autoTransform
        attr_accessor :referenceScale
        attr_accessor :symbol

        def initialize(rectangle = nil, locked = nil, fixedAspectRatio = nil, name = nil, type = nil, autoTransform = nil, referenceScale = nil, symbol = nil)
          @rectangle = rectangle
          @locked = locked
          @fixedAspectRatio = fixedAspectRatio
          @name = name
          @type = type
          @autoTransform = autoTransform
          @referenceScale = referenceScale
          @symbol = symbol
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}TextElement
      #   name - SOAP::SOAPString
      #   type - SOAP::SOAPString
      #   autoTransform - SOAP::SOAPBoolean
      #   referenceScale - SOAP::SOAPDouble
      #   text - SOAP::SOAPString
      #   scale - SOAP::SOAPBoolean
      #   symbol - ESRI::Soap::C_Symbol
      #   textGeometry - ESRI::Soap::Geometry
      #   locked - SOAP::SOAPBoolean
      class TextElement < GraphicElement
        attr_accessor :name
        attr_accessor :type
        attr_accessor :autoTransform
        attr_accessor :referenceScale
        attr_accessor :text
        attr_accessor :scale
        attr_accessor :symbol
        attr_accessor :textGeometry
        attr_accessor :locked

        def initialize(name = nil, type = nil, autoTransform = nil, referenceScale = nil, text = nil, scale = nil, symbol = nil, textGeometry = nil, locked = nil)
          @name = name
          @type = type
          @autoTransform = autoTransform
          @referenceScale = referenceScale
          @text = text
          @scale = scale
          @symbol = symbol
          @textGeometry = textGeometry
          @locked = locked
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GroupElement
      #   name - SOAP::SOAPString
      #   type - SOAP::SOAPString
      #   autoTransform - SOAP::SOAPBoolean
      #   referenceScale - SOAP::SOAPDouble
      #   elements - ESRI::Soap::ArrayOfGraphicElement
      #   rectangle - ESRI::Soap::Geometry
      #   locked - SOAP::SOAPBoolean
      #   fixedAspectRatio - SOAP::SOAPBoolean
      #   border - ESRI::Soap::Border
      #   background - ESRI::Soap::Background
      #   draftMode - SOAP::SOAPBoolean
      #   shadow - ESRI::Soap::Shadow
      class GroupElement < Element
        attr_accessor :name
        attr_accessor :type
        attr_accessor :autoTransform
        attr_accessor :referenceScale
        attr_accessor :elements
        attr_accessor :rectangle
        attr_accessor :locked
        attr_accessor :fixedAspectRatio
        attr_accessor :border
        attr_accessor :background
        attr_accessor :draftMode
        attr_accessor :shadow

        def initialize(name = nil, type = nil, autoTransform = nil, referenceScale = nil, elements = nil, rectangle = nil, locked = nil, fixedAspectRatio = nil, border = nil, background = nil, draftMode = nil, shadow = nil)
          @name = name
          @type = type
          @autoTransform = autoTransform
          @referenceScale = referenceScale
          @elements = elements
          @rectangle = rectangle
          @locked = locked
          @fixedAspectRatio = fixedAspectRatio
          @border = border
          @background = background
          @draftMode = draftMode
          @shadow = shadow
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Patch
      #   name - SOAP::SOAPString
      #   preserveAspectRatio - SOAP::SOAPBoolean
      #   geometry - ESRI::Soap::Geometry
      class Patch
        attr_accessor :name
        attr_accessor :preserveAspectRatio
        attr_accessor :geometry

        def initialize(name = nil, preserveAspectRatio = nil, geometry = nil)
          @name = name
          @preserveAspectRatio = preserveAspectRatio
          @geometry = geometry
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}AreaPatch
      #   name - SOAP::SOAPString
      #   preserveAspectRatio - SOAP::SOAPBoolean
      #   geometry - ESRI::Soap::Geometry
      class AreaPatch < Patch
        attr_accessor :name
        attr_accessor :preserveAspectRatio
        attr_accessor :geometry

        def initialize(name = nil, preserveAspectRatio = nil, geometry = nil)
          @name = name
          @preserveAspectRatio = preserveAspectRatio
          @geometry = geometry
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}LinePatch
      #   name - SOAP::SOAPString
      #   preserveAspectRatio - SOAP::SOAPBoolean
      #   geometry - ESRI::Soap::Geometry
      class LinePatch < Patch
        attr_accessor :name
        attr_accessor :preserveAspectRatio
        attr_accessor :geometry

        def initialize(name = nil, preserveAspectRatio = nil, geometry = nil)
          @name = name
          @preserveAspectRatio = preserveAspectRatio
          @geometry = geometry
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}TileImageInfo
      #   cacheTileFormat - SOAP::SOAPString
      #   compressionQuality - SOAP::SOAPInt
      #   antialiasing - SOAP::SOAPString
      class TileImageInfo
        attr_accessor :cacheTileFormat
        attr_accessor :compressionQuality
        attr_accessor :antialiasing

        def initialize(cacheTileFormat = nil, compressionQuality = nil, antialiasing = nil)
          @cacheTileFormat = cacheTileFormat
          @compressionQuality = compressionQuality
          @antialiasing = antialiasing
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}LayerCacheInfo
      #   layerID - SOAP::SOAPInt
      #   hasCache - SOAP::SOAPBoolean
      class LayerCacheInfo
        attr_accessor :layerID
        attr_accessor :hasCache

        def initialize(layerID = nil, hasCache = nil)
          @layerID = layerID
          @hasCache = hasCache
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfLayerCacheInfo
      #   layerCacheInfo - ESRI::Soap::LayerCacheInfo
      class ArrayOfLayerCacheInfo
        attr_accessor :layerCacheInfo

        def initialize(layerCacheInfo = nil)
          @layerCacheInfo = layerCacheInfo
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}CacheDescriptionInfo
      #   tileCacheInfo - ESRI::Soap::TileCacheInfo
      #   tileImageInfo - ESRI::Soap::TileImageInfo
      #   layerCacheInfos - ESRI::Soap::ArrayOfLayerCacheInfo
      #   cacheControlInfo - ESRI::Soap::CacheControlInfo
      #   serviceType - ESRI::Soap::EsriCachedMapServiceType
      class CacheDescriptionInfo
        attr_accessor :tileCacheInfo
        attr_accessor :tileImageInfo
        attr_accessor :layerCacheInfos
        attr_accessor :cacheControlInfo
        attr_accessor :serviceType

        def initialize(tileCacheInfo = nil, tileImageInfo = nil, layerCacheInfos = nil, cacheControlInfo = nil, serviceType = nil)
          @tileCacheInfo = tileCacheInfo
          @tileImageInfo = tileImageInfo
          @layerCacheInfos = layerCacheInfos
          @cacheControlInfo = cacheControlInfo
          @serviceType = serviceType
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}CacheControlInfo
      #   clientCachingAllowed - SOAP::SOAPBoolean
      class CacheControlInfo
        attr_accessor :clientCachingAllowed

        def initialize(clientCachingAllowed = nil)
          @clientCachingAllowed = clientCachingAllowed
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryResultOptions
      #   format - ESRI::Soap::EsriQueryResultFormat
      #   formatProperties - ESRI::Soap::PropertySet
      #   geoTransformation - ESRI::Soap::GeoTransformation
      class QueryResultOptions
        attr_accessor :format
        attr_accessor :formatProperties
        attr_accessor :geoTransformation

        def initialize(format = nil, formatProperties = nil, geoTransformation = nil)
          @format = format
          @formatProperties = formatProperties
          @geoTransformation = geoTransformation
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryResult
      #   mimeData - SOAP::SOAPBase64
      #   uRL - SOAP::SOAPString
      #   object - (any)
      class QueryResult
        attr_accessor :mimeData
        attr_accessor :uRL
        attr_accessor :object

        def initialize(mimeData = nil, uRL = nil, object = nil)
          @mimeData = mimeData
          @uRL = uRL
          @object = object
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Color
      # abstract
      #   useWindowsDithering - SOAP::SOAPBoolean
      #   alphaValue - SOAP::SOAPUnsignedByte
      class Color
        attr_accessor :useWindowsDithering
        attr_accessor :alphaValue

        def initialize(useWindowsDithering = nil, alphaValue = nil)
          @useWindowsDithering = useWindowsDithering
          @alphaValue = alphaValue
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GrayColor
      #   useWindowsDithering - SOAP::SOAPBoolean
      #   alphaValue - SOAP::SOAPUnsignedByte
      #   grayLevel - SOAP::SOAPUnsignedByte
      class GrayColor < Color
        attr_accessor :useWindowsDithering
        attr_accessor :alphaValue
        attr_accessor :grayLevel

        def initialize(useWindowsDithering = nil, alphaValue = nil, grayLevel = nil)
          @useWindowsDithering = useWindowsDithering
          @alphaValue = alphaValue
          @grayLevel = grayLevel
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}RgbColor
      #   useWindowsDithering - SOAP::SOAPBoolean
      #   alphaValue - SOAP::SOAPUnsignedByte
      #   red - SOAP::SOAPUnsignedByte
      #   green - SOAP::SOAPUnsignedByte
      #   blue - SOAP::SOAPUnsignedByte
      class RgbColor < Color
        attr_accessor :useWindowsDithering
        attr_accessor :alphaValue
        attr_accessor :red
        attr_accessor :green
        attr_accessor :blue

        def initialize(useWindowsDithering = nil, alphaValue = nil, red = nil, green = nil, blue = nil)
          @useWindowsDithering = useWindowsDithering
          @alphaValue = alphaValue
          @red = red
          @green = green
          @blue = blue
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}CmykColor
      #   useWindowsDithering - SOAP::SOAPBoolean
      #   alphaValue - SOAP::SOAPUnsignedByte
      #   cyan - SOAP::SOAPUnsignedByte
      #   magenta - SOAP::SOAPUnsignedByte
      #   yellow - SOAP::SOAPUnsignedByte
      #   black - SOAP::SOAPUnsignedByte
      #   overprint - SOAP::SOAPBoolean
      #   isSpot - SOAP::SOAPBoolean
      #   spotDescription - SOAP::SOAPString
      #   spotPercent - SOAP::SOAPShort
      class CmykColor < Color
        attr_accessor :useWindowsDithering
        attr_accessor :alphaValue
        attr_accessor :cyan
        attr_accessor :magenta
        attr_accessor :yellow
        attr_accessor :black
        attr_accessor :overprint
        attr_accessor :isSpot
        attr_accessor :spotDescription
        attr_accessor :spotPercent

        def initialize(useWindowsDithering = nil, alphaValue = nil, cyan = nil, magenta = nil, yellow = nil, black = nil, overprint = nil, isSpot = nil, spotDescription = nil, spotPercent = nil)
          @useWindowsDithering = useWindowsDithering
          @alphaValue = alphaValue
          @cyan = cyan
          @magenta = magenta
          @yellow = yellow
          @black = black
          @overprint = overprint
          @isSpot = isSpot
          @spotDescription = spotDescription
          @spotPercent = spotPercent
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}HlsColor
      #   useWindowsDithering - SOAP::SOAPBoolean
      #   alphaValue - SOAP::SOAPUnsignedByte
      #   hue - SOAP::SOAPShort
      #   lightness - SOAP::SOAPUnsignedByte
      #   saturation - SOAP::SOAPUnsignedByte
      class HlsColor < Color
        attr_accessor :useWindowsDithering
        attr_accessor :alphaValue
        attr_accessor :hue
        attr_accessor :lightness
        attr_accessor :saturation

        def initialize(useWindowsDithering = nil, alphaValue = nil, hue = nil, lightness = nil, saturation = nil)
          @useWindowsDithering = useWindowsDithering
          @alphaValue = alphaValue
          @hue = hue
          @lightness = lightness
          @saturation = saturation
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}HsvColor
      #   useWindowsDithering - SOAP::SOAPBoolean
      #   alphaValue - SOAP::SOAPUnsignedByte
      #   hue - SOAP::SOAPShort
      #   saturation - SOAP::SOAPUnsignedByte
      #   value - SOAP::SOAPUnsignedByte
      class HsvColor < Color
        attr_accessor :useWindowsDithering
        attr_accessor :alphaValue
        attr_accessor :hue
        attr_accessor :saturation
        attr_accessor :value

        def initialize(useWindowsDithering = nil, alphaValue = nil, hue = nil, saturation = nil, value = nil)
          @useWindowsDithering = useWindowsDithering
          @alphaValue = alphaValue
          @hue = hue
          @saturation = saturation
          @value = value
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Symbol
      # abstract
      class C_Symbol
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}TextSymbol
      #   color - ESRI::Soap::Color
      #   breakCharIndex - SOAP::SOAPInt
      #   verticalAlignment - ESRI::Soap::EsriTextVerticalAlignment
      #   horizontalAlignment - ESRI::Soap::EsriTextHorizontalAlignment
      #   clip - SOAP::SOAPBoolean
      #   rightToLeft - SOAP::SOAPBoolean
      #   angle - SOAP::SOAPDouble
      #   xOffset - SOAP::SOAPDouble
      #   yOffset - SOAP::SOAPDouble
      #   shadowColor - ESRI::Soap::Color
      #   shadowXOffset - SOAP::SOAPDouble
      #   shadowYOffset - SOAP::SOAPDouble
      #   textPosition - ESRI::Soap::EsriTextPosition
      #   textCase - ESRI::Soap::EsriTextCase
      #   characterSpacing - SOAP::SOAPDouble
      #   characterWidth - SOAP::SOAPDouble
      #   wordSpacing - SOAP::SOAPDouble
      #   kerning - SOAP::SOAPBoolean
      #   leading - SOAP::SOAPDouble
      #   textDirection - ESRI::Soap::EsriTextDirection
      #   flipAngle - SOAP::SOAPDouble
      #   typeSetting - SOAP::SOAPBoolean
      #   textPathClass - SOAP::SOAPString
      #   fillSymbol - ESRI::Soap::C_Symbol
      #   text - SOAP::SOAPString
      #   size - SOAP::SOAPDouble
      #   maskStyle - ESRI::Soap::EsriMaskStyle
      #   maskSize - SOAP::SOAPDouble
      #   maskSymbol - ESRI::Soap::C_Symbol
      #   fontName - SOAP::SOAPString
      #   fontItalic - SOAP::SOAPBoolean
      #   fontUnderline - SOAP::SOAPBoolean
      #   fontStrikethrough - SOAP::SOAPBoolean
      #   fontWeight - SOAP::SOAPInt
      #   fontCharset - SOAP::SOAPInt
      #   fontSizeHi - SOAP::SOAPInt
      #   fontSizeLo - SOAP::SOAPInt
      #   textParserClass - SOAP::SOAPString
      class TextSymbol < C_Symbol
        attr_accessor :color
        attr_accessor :breakCharIndex
        attr_accessor :verticalAlignment
        attr_accessor :horizontalAlignment
        attr_accessor :clip
        attr_accessor :rightToLeft
        attr_accessor :angle
        attr_accessor :xOffset
        attr_accessor :yOffset
        attr_accessor :shadowColor
        attr_accessor :shadowXOffset
        attr_accessor :shadowYOffset
        attr_accessor :textPosition
        attr_accessor :textCase
        attr_accessor :characterSpacing
        attr_accessor :characterWidth
        attr_accessor :wordSpacing
        attr_accessor :kerning
        attr_accessor :leading
        attr_accessor :textDirection
        attr_accessor :flipAngle
        attr_accessor :typeSetting
        attr_accessor :textPathClass
        attr_accessor :fillSymbol
        attr_accessor :text
        attr_accessor :size
        attr_accessor :maskStyle
        attr_accessor :maskSize
        attr_accessor :maskSymbol
        attr_accessor :fontName
        attr_accessor :fontItalic
        attr_accessor :fontUnderline
        attr_accessor :fontStrikethrough
        attr_accessor :fontWeight
        attr_accessor :fontCharset
        attr_accessor :fontSizeHi
        attr_accessor :fontSizeLo
        attr_accessor :textParserClass

        def initialize(color = nil, breakCharIndex = nil, verticalAlignment = nil, horizontalAlignment = nil, clip = nil, rightToLeft = nil, angle = nil, xOffset = nil, yOffset = nil, shadowColor = nil, shadowXOffset = nil, shadowYOffset = nil, textPosition = nil, textCase = nil, characterSpacing = nil, characterWidth = nil, wordSpacing = nil, kerning = nil, leading = nil, textDirection = nil, flipAngle = nil, typeSetting = nil, textPathClass = nil, fillSymbol = nil, text = nil, size = nil, maskStyle = nil, maskSize = nil, maskSymbol = nil, fontName = nil, fontItalic = nil, fontUnderline = nil, fontStrikethrough = nil, fontWeight = nil, fontCharset = nil, fontSizeHi = nil, fontSizeLo = nil, textParserClass = nil)
          @color = color
          @breakCharIndex = breakCharIndex
          @verticalAlignment = verticalAlignment
          @horizontalAlignment = horizontalAlignment
          @clip = clip
          @rightToLeft = rightToLeft
          @angle = angle
          @xOffset = xOffset
          @yOffset = yOffset
          @shadowColor = shadowColor
          @shadowXOffset = shadowXOffset
          @shadowYOffset = shadowYOffset
          @textPosition = textPosition
          @textCase = textCase
          @characterSpacing = characterSpacing
          @characterWidth = characterWidth
          @wordSpacing = wordSpacing
          @kerning = kerning
          @leading = leading
          @textDirection = textDirection
          @flipAngle = flipAngle
          @typeSetting = typeSetting
          @textPathClass = textPathClass
          @fillSymbol = fillSymbol
          @text = text
          @size = size
          @maskStyle = maskStyle
          @maskSize = maskSize
          @maskSymbol = maskSymbol
          @fontName = fontName
          @fontItalic = fontItalic
          @fontUnderline = fontUnderline
          @fontStrikethrough = fontStrikethrough
          @fontWeight = fontWeight
          @fontCharset = fontCharset
          @fontSizeHi = fontSizeHi
          @fontSizeLo = fontSizeLo
          @textParserClass = textParserClass
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}FillSymbol
      # abstract
      #   color - ESRI::Soap::Color
      #   outline - ESRI::Soap::LineSymbol
      class FillSymbol < C_Symbol
        attr_accessor :color
        attr_accessor :outline

        def initialize(color = nil, outline = nil)
          @color = color
          @outline = outline
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}SimpleFillSymbol
      #   color - ESRI::Soap::Color
      #   outline - ESRI::Soap::LineSymbol
      #   style - ESRI::Soap::EsriSimpleFillStyle
      class SimpleFillSymbol < FillSymbol
        attr_accessor :color
        attr_accessor :outline
        attr_accessor :style

        def initialize(color = nil, outline = nil, style = nil)
          @color = color
          @outline = outline
          @style = style
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}PictureFillSymbol
      #   color - ESRI::Soap::Color
      #   outline - ESRI::Soap::LineSymbol
      #   picture - SOAP::SOAPBase64
      #   bgColor - ESRI::Soap::Color
      #   fgColor - ESRI::Soap::Color
      #   bitmapTransColor - ESRI::Soap::Color
      #   xSeparation - SOAP::SOAPDouble
      #   ySeparation - SOAP::SOAPDouble
      #   swap1BitColor - SOAP::SOAPBoolean
      #   angle - SOAP::SOAPDouble
      #   xOffset - SOAP::SOAPDouble
      #   yOffset - SOAP::SOAPDouble
      #   xScale - SOAP::SOAPDouble
      #   yScale - SOAP::SOAPDouble
      class PictureFillSymbol < FillSymbol
        attr_accessor :color
        attr_accessor :outline
        attr_accessor :picture
        attr_accessor :bgColor
        attr_accessor :fgColor
        attr_accessor :bitmapTransColor
        attr_accessor :xSeparation
        attr_accessor :ySeparation
        attr_accessor :swap1BitColor
        attr_accessor :angle
        attr_accessor :xOffset
        attr_accessor :yOffset
        attr_accessor :xScale
        attr_accessor :yScale

        def initialize(color = nil, outline = nil, picture = nil, bgColor = nil, fgColor = nil, bitmapTransColor = nil, xSeparation = nil, ySeparation = nil, swap1BitColor = nil, angle = nil, xOffset = nil, yOffset = nil, xScale = nil, yScale = nil)
          @color = color
          @outline = outline
          @picture = picture
          @bgColor = bgColor
          @fgColor = fgColor
          @bitmapTransColor = bitmapTransColor
          @xSeparation = xSeparation
          @ySeparation = ySeparation
          @swap1BitColor = swap1BitColor
          @angle = angle
          @xOffset = xOffset
          @yOffset = yOffset
          @xScale = xScale
          @yScale = yScale
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}XMLBinaryFillSymbol
      #   color - ESRI::Soap::Color
      #   outline - ESRI::Soap::LineSymbol
      #   data - ESRI::Soap::XMLPersistedObject
      class XMLBinaryFillSymbol < FillSymbol
        attr_accessor :color
        attr_accessor :outline
        attr_accessor :data

        def initialize(color = nil, outline = nil, data = nil)
          @color = color
          @outline = outline
          @data = data
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}LineSymbol
      # abstract
      #   color - ESRI::Soap::Color
      #   width - SOAP::SOAPDouble
      class LineSymbol < C_Symbol
        attr_accessor :color
        attr_accessor :width

        def initialize(color = nil, width = nil)
          @color = color
          @width = width
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}SimpleLineSymbol
      #   color - ESRI::Soap::Color
      #   width - SOAP::SOAPDouble
      #   style - ESRI::Soap::EsriSimpleLineStyle
      class SimpleLineSymbol < LineSymbol
        attr_accessor :color
        attr_accessor :width
        attr_accessor :style

        def initialize(color = nil, width = nil, style = nil)
          @color = color
          @width = width
          @style = style
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MarkerSymbol
      # abstract
      #   angle - SOAP::SOAPDouble
      #   color - ESRI::Soap::Color
      #   size - SOAP::SOAPDouble
      #   xOffset - SOAP::SOAPDouble
      #   yOffset - SOAP::SOAPDouble
      class MarkerSymbol < C_Symbol
        attr_accessor :angle
        attr_accessor :color
        attr_accessor :size
        attr_accessor :xOffset
        attr_accessor :yOffset

        def initialize(angle = nil, color = nil, size = nil, xOffset = nil, yOffset = nil)
          @angle = angle
          @color = color
          @size = size
          @xOffset = xOffset
          @yOffset = yOffset
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}SimpleMarkerSymbol
      #   angle - SOAP::SOAPDouble
      #   color - ESRI::Soap::Color
      #   size - SOAP::SOAPDouble
      #   xOffset - SOAP::SOAPDouble
      #   yOffset - SOAP::SOAPDouble
      #   outline - SOAP::SOAPBoolean
      #   outlineSize - SOAP::SOAPDouble
      #   outlineColor - ESRI::Soap::Color
      #   style - ESRI::Soap::EsriSimpleMarkerStyle
      class SimpleMarkerSymbol < MarkerSymbol
        attr_accessor :angle
        attr_accessor :color
        attr_accessor :size
        attr_accessor :xOffset
        attr_accessor :yOffset
        attr_accessor :outline
        attr_accessor :outlineSize
        attr_accessor :outlineColor
        attr_accessor :style

        def initialize(angle = nil, color = nil, size = nil, xOffset = nil, yOffset = nil, outline = nil, outlineSize = nil, outlineColor = nil, style = nil)
          @angle = angle
          @color = color
          @size = size
          @xOffset = xOffset
          @yOffset = yOffset
          @outline = outline
          @outlineSize = outlineSize
          @outlineColor = outlineColor
          @style = style
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}CartographicMarkerSymbol
      # abstract
      #   angle - SOAP::SOAPDouble
      #   color - ESRI::Soap::Color
      #   size - SOAP::SOAPDouble
      #   xOffset - SOAP::SOAPDouble
      #   yOffset - SOAP::SOAPDouble
      #   xScale - SOAP::SOAPDouble
      #   yScale - SOAP::SOAPDouble
      class CartographicMarkerSymbol < MarkerSymbol
        attr_accessor :angle
        attr_accessor :color
        attr_accessor :size
        attr_accessor :xOffset
        attr_accessor :yOffset
        attr_accessor :xScale
        attr_accessor :yScale

        def initialize(angle = nil, color = nil, size = nil, xOffset = nil, yOffset = nil, xScale = nil, yScale = nil)
          @angle = angle
          @color = color
          @size = size
          @xOffset = xOffset
          @yOffset = yOffset
          @xScale = xScale
          @yScale = yScale
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}CharacterMarkerSymbol
      #   angle - SOAP::SOAPDouble
      #   color - ESRI::Soap::Color
      #   size - SOAP::SOAPDouble
      #   xOffset - SOAP::SOAPDouble
      #   yOffset - SOAP::SOAPDouble
      #   xScale - SOAP::SOAPDouble
      #   yScale - SOAP::SOAPDouble
      #   characterIndex - SOAP::SOAPInt
      #   fontName - SOAP::SOAPString
      #   fontItalic - SOAP::SOAPBoolean
      #   fontUnderline - SOAP::SOAPBoolean
      #   fontStrikethrough - SOAP::SOAPBoolean
      #   fontWeight - SOAP::SOAPInt
      #   fontCharset - SOAP::SOAPInt
      #   fontSizeHi - SOAP::SOAPInt
      #   fontSizeLo - SOAP::SOAPInt
      class CharacterMarkerSymbol < CartographicMarkerSymbol
        attr_accessor :angle
        attr_accessor :color
        attr_accessor :size
        attr_accessor :xOffset
        attr_accessor :yOffset
        attr_accessor :xScale
        attr_accessor :yScale
        attr_accessor :characterIndex
        attr_accessor :fontName
        attr_accessor :fontItalic
        attr_accessor :fontUnderline
        attr_accessor :fontStrikethrough
        attr_accessor :fontWeight
        attr_accessor :fontCharset
        attr_accessor :fontSizeHi
        attr_accessor :fontSizeLo

        def initialize(angle = nil, color = nil, size = nil, xOffset = nil, yOffset = nil, xScale = nil, yScale = nil, characterIndex = nil, fontName = nil, fontItalic = nil, fontUnderline = nil, fontStrikethrough = nil, fontWeight = nil, fontCharset = nil, fontSizeHi = nil, fontSizeLo = nil)
          @angle = angle
          @color = color
          @size = size
          @xOffset = xOffset
          @yOffset = yOffset
          @xScale = xScale
          @yScale = yScale
          @characterIndex = characterIndex
          @fontName = fontName
          @fontItalic = fontItalic
          @fontUnderline = fontUnderline
          @fontStrikethrough = fontStrikethrough
          @fontWeight = fontWeight
          @fontCharset = fontCharset
          @fontSizeHi = fontSizeHi
          @fontSizeLo = fontSizeLo
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}PictureMarkerSymbol
      #   angle - SOAP::SOAPDouble
      #   color - ESRI::Soap::Color
      #   size - SOAP::SOAPDouble
      #   xOffset - SOAP::SOAPDouble
      #   yOffset - SOAP::SOAPDouble
      #   xScale - SOAP::SOAPDouble
      #   yScale - SOAP::SOAPDouble
      #   bgColor - ESRI::Soap::Color
      #   bitmapTransColor - ESRI::Soap::Color
      #   picture - SOAP::SOAPBase64
      #   fgColor - ESRI::Soap::Color
      #   swap1BitColor - SOAP::SOAPBoolean
      class PictureMarkerSymbol < CartographicMarkerSymbol
        attr_accessor :angle
        attr_accessor :color
        attr_accessor :size
        attr_accessor :xOffset
        attr_accessor :yOffset
        attr_accessor :xScale
        attr_accessor :yScale
        attr_accessor :bgColor
        attr_accessor :bitmapTransColor
        attr_accessor :picture
        attr_accessor :fgColor
        attr_accessor :swap1BitColor

        def initialize(angle = nil, color = nil, size = nil, xOffset = nil, yOffset = nil, xScale = nil, yScale = nil, bgColor = nil, bitmapTransColor = nil, picture = nil, fgColor = nil, swap1BitColor = nil)
          @angle = angle
          @color = color
          @size = size
          @xOffset = xOffset
          @yOffset = yOffset
          @xScale = xScale
          @yScale = yScale
          @bgColor = bgColor
          @bitmapTransColor = bitmapTransColor
          @picture = picture
          @fgColor = fgColor
          @swap1BitColor = swap1BitColor
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}XMLBinarySymbol
      #   data - ESRI::Soap::XMLPersistedObject
      class XMLBinarySymbol < C_Symbol
        attr_accessor :data

        def initialize(data = nil)
          @data = data
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GeometryDef
      #   avgNumPoints - SOAP::SOAPInt
      #   geometryType - ESRI::Soap::EsriGeometryType
      #   hasM - SOAP::SOAPBoolean
      #   hasZ - SOAP::SOAPBoolean
      #   spatialReference - ESRI::Soap::SpatialReference
      #   gridSize0 - SOAP::SOAPDouble
      #   gridSize1 - SOAP::SOAPDouble
      #   gridSize2 - SOAP::SOAPDouble
      class GeometryDef
        attr_accessor :avgNumPoints
        attr_accessor :geometryType
        attr_accessor :hasM
        attr_accessor :hasZ
        attr_accessor :spatialReference
        attr_accessor :gridSize0
        attr_accessor :gridSize1
        attr_accessor :gridSize2

        def initialize(avgNumPoints = nil, geometryType = nil, hasM = nil, hasZ = nil, spatialReference = nil, gridSize0 = nil, gridSize1 = nil, gridSize2 = nil)
          @avgNumPoints = avgNumPoints
          @geometryType = geometryType
          @hasM = hasM
          @hasZ = hasZ
          @spatialReference = spatialReference
          @gridSize0 = gridSize0
          @gridSize1 = gridSize1
          @gridSize2 = gridSize2
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Domain
      # abstract
      #   domainName - SOAP::SOAPString
      #   fieldType - ESRI::Soap::EsriFieldType
      #   mergePolicy - ESRI::Soap::EsriMergePolicyType
      #   splitPolicy - ESRI::Soap::EsriSplitPolicyType
      #   description - SOAP::SOAPString
      #   owner - SOAP::SOAPString
      class Domain
        attr_accessor :domainName
        attr_accessor :fieldType
        attr_accessor :mergePolicy
        attr_accessor :splitPolicy
        attr_accessor :description
        attr_accessor :owner

        def initialize(domainName = nil, fieldType = nil, mergePolicy = nil, splitPolicy = nil, description = nil, owner = nil)
          @domainName = domainName
          @fieldType = fieldType
          @mergePolicy = mergePolicy
          @splitPolicy = splitPolicy
          @description = description
          @owner = owner
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}RangeDomain
      #   domainName - SOAP::SOAPString
      #   fieldType - ESRI::Soap::EsriFieldType
      #   mergePolicy - ESRI::Soap::EsriMergePolicyType
      #   splitPolicy - ESRI::Soap::EsriSplitPolicyType
      #   description - SOAP::SOAPString
      #   owner - SOAP::SOAPString
      #   maxValue - (any)
      #   minValue - (any)
      class RangeDomain < Domain
        attr_accessor :domainName
        attr_accessor :fieldType
        attr_accessor :mergePolicy
        attr_accessor :splitPolicy
        attr_accessor :description
        attr_accessor :owner
        attr_accessor :maxValue
        attr_accessor :minValue

        def initialize(domainName = nil, fieldType = nil, mergePolicy = nil, splitPolicy = nil, description = nil, owner = nil, maxValue = nil, minValue = nil)
          @domainName = domainName
          @fieldType = fieldType
          @mergePolicy = mergePolicy
          @splitPolicy = splitPolicy
          @description = description
          @owner = owner
          @maxValue = maxValue
          @minValue = minValue
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}CodedValueDomain
      #   domainName - SOAP::SOAPString
      #   fieldType - ESRI::Soap::EsriFieldType
      #   mergePolicy - ESRI::Soap::EsriMergePolicyType
      #   splitPolicy - ESRI::Soap::EsriSplitPolicyType
      #   description - SOAP::SOAPString
      #   owner - SOAP::SOAPString
      #   codedValues - ESRI::Soap::ArrayOfCodedValue
      class CodedValueDomain < Domain
        attr_accessor :domainName
        attr_accessor :fieldType
        attr_accessor :mergePolicy
        attr_accessor :splitPolicy
        attr_accessor :description
        attr_accessor :owner
        attr_accessor :codedValues

        def initialize(domainName = nil, fieldType = nil, mergePolicy = nil, splitPolicy = nil, description = nil, owner = nil, codedValues = nil)
          @domainName = domainName
          @fieldType = fieldType
          @mergePolicy = mergePolicy
          @splitPolicy = splitPolicy
          @description = description
          @owner = owner
          @codedValues = codedValues
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}BitMaskCodedValueDomain
      #   domainName - SOAP::SOAPString
      #   fieldType - ESRI::Soap::EsriFieldType
      #   mergePolicy - ESRI::Soap::EsriMergePolicyType
      #   splitPolicy - ESRI::Soap::EsriSplitPolicyType
      #   description - SOAP::SOAPString
      #   owner - SOAP::SOAPString
      #   codedValues - ESRI::Soap::ArrayOfCodedValue
      class BitMaskCodedValueDomain < CodedValueDomain
        attr_accessor :domainName
        attr_accessor :fieldType
        attr_accessor :mergePolicy
        attr_accessor :splitPolicy
        attr_accessor :description
        attr_accessor :owner
        attr_accessor :codedValues

        def initialize(domainName = nil, fieldType = nil, mergePolicy = nil, splitPolicy = nil, description = nil, owner = nil, codedValues = nil)
          @domainName = domainName
          @fieldType = fieldType
          @mergePolicy = mergePolicy
          @splitPolicy = splitPolicy
          @description = description
          @owner = owner
          @codedValues = codedValues
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Field
      #   name - SOAP::SOAPString
      #   type - ESRI::Soap::EsriFieldType
      #   isNullable - SOAP::SOAPBoolean
      #   length - SOAP::SOAPInt
      #   precision - SOAP::SOAPInt
      #   scale - SOAP::SOAPInt
      #   required - SOAP::SOAPBoolean
      #   editable - SOAP::SOAPBoolean
      #   domainFixed - SOAP::SOAPBoolean
      #   geometryDef - ESRI::Soap::GeometryDef
      #   aliasName - SOAP::SOAPString
      #   modelName - SOAP::SOAPString
      #   defaultValue - (any)
      #   domain - ESRI::Soap::Domain
      #   rasterDef - ESRI::Soap::RasterDef
      class Field
        attr_accessor :name
        attr_accessor :type
        attr_accessor :isNullable
        attr_accessor :length
        attr_accessor :precision
        attr_accessor :scale
        attr_accessor :required
        attr_accessor :editable
        attr_accessor :domainFixed
        attr_accessor :geometryDef
        attr_accessor :aliasName
        attr_accessor :modelName
        attr_accessor :defaultValue
        attr_accessor :domain
        attr_accessor :rasterDef

        def initialize(name = nil, type = nil, isNullable = nil, length = nil, precision = nil, scale = nil, required = nil, editable = nil, domainFixed = nil, geometryDef = nil, aliasName = nil, modelName = nil, defaultValue = nil, domain = nil, rasterDef = nil)
          @name = name
          @type = type
          @isNullable = isNullable
          @length = length
          @precision = precision
          @scale = scale
          @required = required
          @editable = editable
          @domainFixed = domainFixed
          @geometryDef = geometryDef
          @aliasName = aliasName
          @modelName = modelName
          @defaultValue = defaultValue
          @domain = domain
          @rasterDef = rasterDef
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfField
      class ArrayOfField < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Fields
      #   fieldArray - ESRI::Soap::ArrayOfField
      class Fields
        attr_accessor :fieldArray

        def initialize(fieldArray = nil)
          @fieldArray = fieldArray
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfValue
      class ArrayOfValue < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Record
      #   values - ESRI::Soap::ArrayOfValue
      class Record
        attr_accessor :values

        def initialize(values = nil)
          @values = values
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfRecord
      class ArrayOfRecord < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}RecordSet
      #   fields - ESRI::Soap::Fields
      #   records - ESRI::Soap::ArrayOfRecord
      class RecordSet
        attr_accessor :fields
        attr_accessor :records

        def initialize(fields = nil, records = nil)
          @fields = fields
          @records = records
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}FIDSet
      #   fIDArray - ESRI::Soap::ArrayOfInt
      class FIDSet
        attr_accessor :fIDArray

        def initialize(fIDArray = nil)
          @fIDArray = fIDArray
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryFilter
      #   subFields - SOAP::SOAPString
      #   whereClause - SOAP::SOAPString
      #   spatialReferenceFieldName - SOAP::SOAPString
      #   resolution - SOAP::SOAPDouble
      #   outputSpatialReference - ESRI::Soap::SpatialReference
      #   fIDSet - ESRI::Soap::FIDSet
      #   postfixClause - SOAP::SOAPString
      #   filterDefs - ESRI::Soap::ArrayOfFilterDef
      class QueryFilter
        attr_accessor :subFields
        attr_accessor :whereClause
        attr_accessor :spatialReferenceFieldName
        attr_accessor :resolution
        attr_accessor :outputSpatialReference
        attr_accessor :fIDSet
        attr_accessor :postfixClause
        attr_accessor :filterDefs

        def initialize(subFields = nil, whereClause = nil, spatialReferenceFieldName = nil, resolution = nil, outputSpatialReference = nil, fIDSet = nil, postfixClause = nil, filterDefs = nil)
          @subFields = subFields
          @whereClause = whereClause
          @spatialReferenceFieldName = spatialReferenceFieldName
          @resolution = resolution
          @outputSpatialReference = outputSpatialReference
          @fIDSet = fIDSet
          @postfixClause = postfixClause
          @filterDefs = filterDefs
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}SpatialFilter
      #   subFields - SOAP::SOAPString
      #   whereClause - SOAP::SOAPString
      #   spatialReferenceFieldName - SOAP::SOAPString
      #   resolution - SOAP::SOAPDouble
      #   outputSpatialReference - ESRI::Soap::SpatialReference
      #   fIDSet - ESRI::Soap::FIDSet
      #   postfixClause - SOAP::SOAPString
      #   filterDefs - ESRI::Soap::ArrayOfFilterDef
      #   searchOrder - ESRI::Soap::EsriSearchOrder
      #   spatialRel - ESRI::Soap::EsriSpatialRelEnum
      #   spatialRelDescription - SOAP::SOAPString
      #   filterGeometry - ESRI::Soap::Geometry
      #   geometryFieldName - SOAP::SOAPString
      #   filterOwnsGeometry - SOAP::SOAPBoolean
      class SpatialFilter < QueryFilter
        attr_accessor :subFields
        attr_accessor :whereClause
        attr_accessor :spatialReferenceFieldName
        attr_accessor :resolution
        attr_accessor :outputSpatialReference
        attr_accessor :fIDSet
        attr_accessor :postfixClause
        attr_accessor :filterDefs
        attr_accessor :searchOrder
        attr_accessor :spatialRel
        attr_accessor :spatialRelDescription
        attr_accessor :filterGeometry
        attr_accessor :geometryFieldName
        attr_accessor :filterOwnsGeometry

        def initialize(subFields = nil, whereClause = nil, spatialReferenceFieldName = nil, resolution = nil, outputSpatialReference = nil, fIDSet = nil, postfixClause = nil, filterDefs = nil, searchOrder = nil, spatialRel = nil, spatialRelDescription = nil, filterGeometry = nil, geometryFieldName = nil, filterOwnsGeometry = nil)
          @subFields = subFields
          @whereClause = whereClause
          @spatialReferenceFieldName = spatialReferenceFieldName
          @resolution = resolution
          @outputSpatialReference = outputSpatialReference
          @fIDSet = fIDSet
          @postfixClause = postfixClause
          @filterDefs = filterDefs
          @searchOrder = searchOrder
          @spatialRel = spatialRel
          @spatialRelDescription = spatialRelDescription
          @filterGeometry = filterGeometry
          @geometryFieldName = geometryFieldName
          @filterOwnsGeometry = filterOwnsGeometry
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}FilterDef
      # abstract
      class FilterDef
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}XMLFilterDef
      #   fieldName - SOAP::SOAPString
      #   expression - SOAP::SOAPString
      class XMLFilterDef < FilterDef
        attr_accessor :fieldName
        attr_accessor :expression

        def initialize(fieldName = nil, expression = nil)
          @fieldName = fieldName
          @expression = expression
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfFilterDef
      class ArrayOfFilterDef < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}CodedValue
      #   name - SOAP::SOAPString
      #   code - (any)
      class CodedValue
        attr_accessor :name
        attr_accessor :code

        def initialize(name = nil, code = nil)
          @name = name
          @code = code
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfCodedValue
      class ArrayOfCodedValue < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}RasterDef
      #   description - SOAP::SOAPString
      #   isByRef - SOAP::SOAPBoolean
      #   spatialReference - ESRI::Soap::SpatialReference
      class RasterDef
        attr_accessor :description
        attr_accessor :isByRef
        attr_accessor :spatialReference

        def initialize(description = nil, isByRef = nil, spatialReference = nil)
          @description = description
          @isByRef = isByRef
          @spatialReference = spatialReference
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GeometryResultOptions
      #   densifyGeometries - SOAP::SOAPBoolean
      #   maximumSegmentLength - SOAP::SOAPDouble
      #   maximumDeviation - SOAP::SOAPDouble
      #   generalizeGeometries - SOAP::SOAPBoolean
      #   maximumAllowableOffset - SOAP::SOAPDouble
      class GeometryResultOptions
        attr_accessor :densifyGeometries
        attr_accessor :maximumSegmentLength
        attr_accessor :maximumDeviation
        attr_accessor :generalizeGeometries
        attr_accessor :maximumAllowableOffset

        def initialize(densifyGeometries = nil, maximumSegmentLength = nil, maximumDeviation = nil, generalizeGeometries = nil, maximumAllowableOffset = nil)
          @densifyGeometries = densifyGeometries
          @maximumSegmentLength = maximumSegmentLength
          @maximumDeviation = maximumDeviation
          @generalizeGeometries = generalizeGeometries
          @maximumAllowableOffset = maximumAllowableOffset
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}PropertySetProperty
      #   key - SOAP::SOAPString
      #   value - (any)
      class PropertySetProperty
        attr_accessor :key
        attr_accessor :value

        def initialize(key = nil, value = nil)
          @key = key
          @value = value
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfPropertySetProperty
      class ArrayOfPropertySetProperty < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}PropertySet
      #   propertyArray - ESRI::Soap::ArrayOfPropertySetProperty
      class PropertySet
        attr_accessor :propertyArray

        def initialize(propertyArray = nil)
          @propertyArray = propertyArray
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}XMLPersistedObject
      #   bytes - SOAP::SOAPBase64
      class XMLPersistedObject
        attr_accessor :bytes

        def initialize(bytes = nil)
          @bytes = bytes
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}NumericFormat
      #   roundingOption - ESRI::Soap::EsriRoundingOptionEnum
      #   roundingValue - SOAP::SOAPInt
      #   alignmentOption - ESRI::Soap::EsriNumericAlignmentEnum
      #   alignmentWidth - SOAP::SOAPInt
      #   useSeparator - SOAP::SOAPBoolean
      #   zeroPad - SOAP::SOAPBoolean
      #   showPlus - SOAP::SOAPBoolean
      class NumericFormat
        attr_accessor :roundingOption
        attr_accessor :roundingValue
        attr_accessor :alignmentOption
        attr_accessor :alignmentWidth
        attr_accessor :useSeparator
        attr_accessor :zeroPad
        attr_accessor :showPlus

        def initialize(roundingOption = nil, roundingValue = nil, alignmentOption = nil, alignmentWidth = nil, useSeparator = nil, zeroPad = nil, showPlus = nil)
          @roundingOption = roundingOption
          @roundingValue = roundingValue
          @alignmentOption = alignmentOption
          @alignmentWidth = alignmentWidth
          @useSeparator = useSeparator
          @zeroPad = zeroPad
          @showPlus = showPlus
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfInt
      class ArrayOfInt < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfString
      class ArrayOfString < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GeoTransformation
      #   wKT - SOAP::SOAPString
      #   wKID - SOAP::SOAPInt
      class GeoTransformation
        attr_accessor :wKT
        attr_accessor :wKID

        def initialize(wKT = nil, wKID = nil)
          @wKT = wKT
          @wKID = wKID
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}SpatialReference
      # abstract
      #   wKT - SOAP::SOAPString
      #   xOrigin - SOAP::SOAPDouble
      #   yOrigin - SOAP::SOAPDouble
      #   xYScale - SOAP::SOAPDouble
      #   zOrigin - SOAP::SOAPDouble
      #   zScale - SOAP::SOAPDouble
      #   mOrigin - SOAP::SOAPDouble
      #   mScale - SOAP::SOAPDouble
      #   xYTolerance - SOAP::SOAPDouble
      #   zTolerance - SOAP::SOAPDouble
      #   mTolerance - SOAP::SOAPDouble
      #   highPrecision - SOAP::SOAPBoolean
      #   leftLongitude - SOAP::SOAPDouble
      #   wKID - SOAP::SOAPInt
      class SpatialReference
        attr_accessor :wKT
        attr_accessor :xOrigin
        attr_accessor :yOrigin
        attr_accessor :xYScale
        attr_accessor :zOrigin
        attr_accessor :zScale
        attr_accessor :mOrigin
        attr_accessor :mScale
        attr_accessor :xYTolerance
        attr_accessor :zTolerance
        attr_accessor :mTolerance
        attr_accessor :highPrecision
        attr_accessor :leftLongitude
        attr_accessor :wKID

        def initialize(wKT = nil, xOrigin = nil, yOrigin = nil, xYScale = nil, zOrigin = nil, zScale = nil, mOrigin = nil, mScale = nil, xYTolerance = nil, zTolerance = nil, mTolerance = nil, highPrecision = nil, leftLongitude = nil, wKID = nil)
          @wKT = wKT
          @xOrigin = xOrigin
          @yOrigin = yOrigin
          @xYScale = xYScale
          @zOrigin = zOrigin
          @zScale = zScale
          @mOrigin = mOrigin
          @mScale = mScale
          @xYTolerance = xYTolerance
          @zTolerance = zTolerance
          @mTolerance = mTolerance
          @highPrecision = highPrecision
          @leftLongitude = leftLongitude
          @wKID = wKID
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ProjectedCoordinateSystem
      #   wKT - SOAP::SOAPString
      #   xOrigin - SOAP::SOAPDouble
      #   yOrigin - SOAP::SOAPDouble
      #   xYScale - SOAP::SOAPDouble
      #   zOrigin - SOAP::SOAPDouble
      #   zScale - SOAP::SOAPDouble
      #   mOrigin - SOAP::SOAPDouble
      #   mScale - SOAP::SOAPDouble
      #   xYTolerance - SOAP::SOAPDouble
      #   zTolerance - SOAP::SOAPDouble
      #   mTolerance - SOAP::SOAPDouble
      #   highPrecision - SOAP::SOAPBoolean
      #   leftLongitude - SOAP::SOAPDouble
      #   wKID - SOAP::SOAPInt
      class ProjectedCoordinateSystem < SpatialReference
        attr_accessor :wKT
        attr_accessor :xOrigin
        attr_accessor :yOrigin
        attr_accessor :xYScale
        attr_accessor :zOrigin
        attr_accessor :zScale
        attr_accessor :mOrigin
        attr_accessor :mScale
        attr_accessor :xYTolerance
        attr_accessor :zTolerance
        attr_accessor :mTolerance
        attr_accessor :highPrecision
        attr_accessor :leftLongitude
        attr_accessor :wKID

        def initialize(wKT = nil, xOrigin = nil, yOrigin = nil, xYScale = nil, zOrigin = nil, zScale = nil, mOrigin = nil, mScale = nil, xYTolerance = nil, zTolerance = nil, mTolerance = nil, highPrecision = nil, leftLongitude = nil, wKID = nil)
          @wKT = wKT
          @xOrigin = xOrigin
          @yOrigin = yOrigin
          @xYScale = xYScale
          @zOrigin = zOrigin
          @zScale = zScale
          @mOrigin = mOrigin
          @mScale = mScale
          @xYTolerance = xYTolerance
          @zTolerance = zTolerance
          @mTolerance = mTolerance
          @highPrecision = highPrecision
          @leftLongitude = leftLongitude
          @wKID = wKID
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GeographicCoordinateSystem
      #   wKT - SOAP::SOAPString
      #   xOrigin - SOAP::SOAPDouble
      #   yOrigin - SOAP::SOAPDouble
      #   xYScale - SOAP::SOAPDouble
      #   zOrigin - SOAP::SOAPDouble
      #   zScale - SOAP::SOAPDouble
      #   mOrigin - SOAP::SOAPDouble
      #   mScale - SOAP::SOAPDouble
      #   xYTolerance - SOAP::SOAPDouble
      #   zTolerance - SOAP::SOAPDouble
      #   mTolerance - SOAP::SOAPDouble
      #   highPrecision - SOAP::SOAPBoolean
      #   leftLongitude - SOAP::SOAPDouble
      #   wKID - SOAP::SOAPInt
      class GeographicCoordinateSystem < SpatialReference
        attr_accessor :wKT
        attr_accessor :xOrigin
        attr_accessor :yOrigin
        attr_accessor :xYScale
        attr_accessor :zOrigin
        attr_accessor :zScale
        attr_accessor :mOrigin
        attr_accessor :mScale
        attr_accessor :xYTolerance
        attr_accessor :zTolerance
        attr_accessor :mTolerance
        attr_accessor :highPrecision
        attr_accessor :leftLongitude
        attr_accessor :wKID

        def initialize(wKT = nil, xOrigin = nil, yOrigin = nil, xYScale = nil, zOrigin = nil, zScale = nil, mOrigin = nil, mScale = nil, xYTolerance = nil, zTolerance = nil, mTolerance = nil, highPrecision = nil, leftLongitude = nil, wKID = nil)
          @wKT = wKT
          @xOrigin = xOrigin
          @yOrigin = yOrigin
          @xYScale = xYScale
          @zOrigin = zOrigin
          @zScale = zScale
          @mOrigin = mOrigin
          @mScale = mScale
          @xYTolerance = xYTolerance
          @zTolerance = zTolerance
          @mTolerance = mTolerance
          @highPrecision = highPrecision
          @leftLongitude = leftLongitude
          @wKID = wKID
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}UnknownCoordinateSystem
      #   wKT - SOAP::SOAPString
      #   xOrigin - SOAP::SOAPDouble
      #   yOrigin - SOAP::SOAPDouble
      #   xYScale - SOAP::SOAPDouble
      #   zOrigin - SOAP::SOAPDouble
      #   zScale - SOAP::SOAPDouble
      #   mOrigin - SOAP::SOAPDouble
      #   mScale - SOAP::SOAPDouble
      #   xYTolerance - SOAP::SOAPDouble
      #   zTolerance - SOAP::SOAPDouble
      #   mTolerance - SOAP::SOAPDouble
      #   highPrecision - SOAP::SOAPBoolean
      #   leftLongitude - SOAP::SOAPDouble
      #   wKID - SOAP::SOAPInt
      class UnknownCoordinateSystem < SpatialReference
        attr_accessor :wKT
        attr_accessor :xOrigin
        attr_accessor :yOrigin
        attr_accessor :xYScale
        attr_accessor :zOrigin
        attr_accessor :zScale
        attr_accessor :mOrigin
        attr_accessor :mScale
        attr_accessor :xYTolerance
        attr_accessor :zTolerance
        attr_accessor :mTolerance
        attr_accessor :highPrecision
        attr_accessor :leftLongitude
        attr_accessor :wKID

        def initialize(wKT = nil, xOrigin = nil, yOrigin = nil, xYScale = nil, zOrigin = nil, zScale = nil, mOrigin = nil, mScale = nil, xYTolerance = nil, zTolerance = nil, mTolerance = nil, highPrecision = nil, leftLongitude = nil, wKID = nil)
          @wKT = wKT
          @xOrigin = xOrigin
          @yOrigin = yOrigin
          @xYScale = xYScale
          @zOrigin = zOrigin
          @zScale = zScale
          @mOrigin = mOrigin
          @mScale = mScale
          @xYTolerance = xYTolerance
          @zTolerance = zTolerance
          @mTolerance = mTolerance
          @highPrecision = highPrecision
          @leftLongitude = leftLongitude
          @wKID = wKID
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Geometry
      class Geometry
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Curve
      # abstract
      class Curve < Geometry
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Segment
      # abstract
      #   fromPoint - ESRI::Soap::Point
      #   toPoint - ESRI::Soap::Point
      class Segment < Curve
        attr_accessor :fromPoint
        attr_accessor :toPoint

        def initialize(fromPoint = nil, toPoint = nil)
          @fromPoint = fromPoint
          @toPoint = toPoint
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Line
      #   fromPoint - ESRI::Soap::Point
      #   toPoint - ESRI::Soap::Point
      class Line < Segment
        attr_accessor :fromPoint
        attr_accessor :toPoint

        def initialize(fromPoint = nil, toPoint = nil)
          @fromPoint = fromPoint
          @toPoint = toPoint
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}EllipticArc
      #   fromPoint - ESRI::Soap::Point
      #   toPoint - ESRI::Soap::Point
      #   ellipseStd - SOAP::SOAPBoolean
      #   centerPoint - ESRI::Soap::Point
      #   rotation - SOAP::SOAPDouble
      #   minorMajorRatio - SOAP::SOAPDouble
      #   isCounterClockWise - SOAP::SOAPBoolean
      #   isMinor - SOAP::SOAPBoolean
      class EllipticArc < Segment
        attr_accessor :fromPoint
        attr_accessor :toPoint
        attr_accessor :ellipseStd
        attr_accessor :centerPoint
        attr_accessor :rotation
        attr_accessor :minorMajorRatio
        attr_accessor :isCounterClockWise
        attr_accessor :isMinor

        def initialize(fromPoint = nil, toPoint = nil, ellipseStd = nil, centerPoint = nil, rotation = nil, minorMajorRatio = nil, isCounterClockWise = nil, isMinor = nil)
          @fromPoint = fromPoint
          @toPoint = toPoint
          @ellipseStd = ellipseStd
          @centerPoint = centerPoint
          @rotation = rotation
          @minorMajorRatio = minorMajorRatio
          @isCounterClockWise = isCounterClockWise
          @isMinor = isMinor
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}CircularArc
      #   fromPoint - ESRI::Soap::Point
      #   toPoint - ESRI::Soap::Point
      #   centerPoint - ESRI::Soap::Point
      #   fromAngle - SOAP::SOAPDouble
      #   toAngle - SOAP::SOAPDouble
      #   isCounterClockwise - SOAP::SOAPBoolean
      #   isMinor - SOAP::SOAPBoolean
      #   isLine - SOAP::SOAPBoolean
      class CircularArc < Segment
        attr_accessor :fromPoint
        attr_accessor :toPoint
        attr_accessor :centerPoint
        attr_accessor :fromAngle
        attr_accessor :toAngle
        attr_accessor :isCounterClockwise
        attr_accessor :isMinor
        attr_accessor :isLine

        def initialize(fromPoint = nil, toPoint = nil, centerPoint = nil, fromAngle = nil, toAngle = nil, isCounterClockwise = nil, isMinor = nil, isLine = nil)
          @fromPoint = fromPoint
          @toPoint = toPoint
          @centerPoint = centerPoint
          @fromAngle = fromAngle
          @toAngle = toAngle
          @isCounterClockwise = isCounterClockwise
          @isMinor = isMinor
          @isLine = isLine
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}BezierCurve
      #   fromPoint - ESRI::Soap::Point
      #   toPoint - ESRI::Soap::Point
      #   degree - SOAP::SOAPInt
      #   controlPointArray - ESRI::Soap::ArrayOfPoint
      class BezierCurve < Segment
        attr_accessor :fromPoint
        attr_accessor :toPoint
        attr_accessor :degree
        attr_accessor :controlPointArray

        def initialize(fromPoint = nil, toPoint = nil, degree = nil, controlPointArray = nil)
          @fromPoint = fromPoint
          @toPoint = toPoint
          @degree = degree
          @controlPointArray = controlPointArray
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Polycurve
      # abstract
      class Polycurve < Curve
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Polygon
      # abstract
      class Polygon < Polycurve
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}PolygonN
      #   hasID - SOAP::SOAPBoolean
      #   hasZ - SOAP::SOAPBoolean
      #   hasM - SOAP::SOAPBoolean
      #   extent - ESRI::Soap::Envelope
      #   ringArray - ESRI::Soap::ArrayOfRing
      #   spatialReference - ESRI::Soap::SpatialReference
      class PolygonN < Polygon
        attr_accessor :hasID
        attr_accessor :hasZ
        attr_accessor :hasM
        attr_accessor :extent
        attr_accessor :ringArray
        attr_accessor :spatialReference

        def initialize(hasID = nil, hasZ = nil, hasM = nil, extent = nil, ringArray = nil, spatialReference = nil)
          @hasID = hasID
          @hasZ = hasZ
          @hasM = hasM
          @extent = extent
          @ringArray = ringArray
          @spatialReference = spatialReference
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}PolygonB
      #   bytes - SOAP::SOAPBase64
      class PolygonB < Polygon
        attr_accessor :bytes

        def initialize(bytes = nil)
          @bytes = bytes
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Polyline
      # abstract
      class Polyline < Polycurve
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}PolylineN
      #   hasID - SOAP::SOAPBoolean
      #   hasZ - SOAP::SOAPBoolean
      #   hasM - SOAP::SOAPBoolean
      #   extent - ESRI::Soap::Envelope
      #   pathArray - ESRI::Soap::ArrayOfPath
      #   spatialReference - ESRI::Soap::SpatialReference
      class PolylineN < Polyline
        attr_accessor :hasID
        attr_accessor :hasZ
        attr_accessor :hasM
        attr_accessor :extent
        attr_accessor :pathArray
        attr_accessor :spatialReference

        def initialize(hasID = nil, hasZ = nil, hasM = nil, extent = nil, pathArray = nil, spatialReference = nil)
          @hasID = hasID
          @hasZ = hasZ
          @hasM = hasM
          @extent = extent
          @pathArray = pathArray
          @spatialReference = spatialReference
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}PolylineB
      #   bytes - SOAP::SOAPBase64
      class PolylineB < Polyline
        attr_accessor :bytes

        def initialize(bytes = nil)
          @bytes = bytes
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Path
      #   pointArray - ESRI::Soap::ArrayOfPoint
      #   segmentArray - ESRI::Soap::ArrayOfSegment
      class Path < Curve
        attr_accessor :pointArray
        attr_accessor :segmentArray

        def initialize(pointArray = nil, segmentArray = nil)
          @pointArray = pointArray
          @segmentArray = segmentArray
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Ring
      #   pointArray - ESRI::Soap::ArrayOfPoint
      #   segmentArray - ESRI::Soap::ArrayOfSegment
      class Ring < Path
        attr_accessor :pointArray
        attr_accessor :segmentArray

        def initialize(pointArray = nil, segmentArray = nil)
          @pointArray = pointArray
          @segmentArray = segmentArray
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Envelope
      # abstract
      class Envelope < Geometry
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}EnvelopeN
      #   xMin - SOAP::SOAPDouble
      #   yMin - SOAP::SOAPDouble
      #   xMax - SOAP::SOAPDouble
      #   yMax - SOAP::SOAPDouble
      #   zMin - SOAP::SOAPDouble
      #   zMax - SOAP::SOAPDouble
      #   mMin - SOAP::SOAPDouble
      #   mMax - SOAP::SOAPDouble
      #   spatialReference - ESRI::Soap::SpatialReference
      class EnvelopeN < Envelope
        attr_accessor :xMin
        attr_accessor :yMin
        attr_accessor :xMax
        attr_accessor :yMax
        attr_accessor :zMin
        attr_accessor :zMax
        attr_accessor :mMin
        attr_accessor :mMax
        attr_accessor :spatialReference

        def initialize(xMin = nil, yMin = nil, xMax = nil, yMax = nil, zMin = nil, zMax = nil, mMin = nil, mMax = nil, spatialReference = nil)
          @xMin = xMin
          @yMin = yMin
          @xMax = xMax
          @yMax = yMax
          @zMin = zMin
          @zMax = zMax
          @mMin = mMin
          @mMax = mMax
          @spatialReference = spatialReference
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}EnvelopeB
      #   bytes - SOAP::SOAPBase64
      class EnvelopeB < Envelope
        attr_accessor :bytes

        def initialize(bytes = nil)
          @bytes = bytes
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Point
      # abstract
      class Point < Geometry
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}PointN
      #   x - SOAP::SOAPDouble
      #   y - SOAP::SOAPDouble
      #   m - SOAP::SOAPDouble
      #   z - SOAP::SOAPDouble
      #   iD - SOAP::SOAPInt
      #   spatialReference - ESRI::Soap::SpatialReference
      class PointN < Point
        attr_accessor :x
        attr_accessor :y
        attr_accessor :m
        attr_accessor :z
        attr_accessor :iD
        attr_accessor :spatialReference

        def initialize(x = nil, y = nil, m = nil, z = nil, iD = nil, spatialReference = nil)
          @x = x
          @y = y
          @m = m
          @z = z
          @iD = iD
          @spatialReference = spatialReference
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}PointB
      #   bytes - SOAP::SOAPBase64
      class PointB < Point
        attr_accessor :bytes

        def initialize(bytes = nil)
          @bytes = bytes
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Multipoint
      # abstract
      class Multipoint < Geometry
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MultipointB
      #   bytes - SOAP::SOAPBase64
      class MultipointB < Multipoint
        attr_accessor :bytes

        def initialize(bytes = nil)
          @bytes = bytes
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MultipointN
      #   hasID - SOAP::SOAPBoolean
      #   hasZ - SOAP::SOAPBoolean
      #   hasM - SOAP::SOAPBoolean
      #   extent - ESRI::Soap::Envelope
      #   pointArray - ESRI::Soap::ArrayOfPoint
      #   spatialReference - ESRI::Soap::SpatialReference
      class MultipointN < Multipoint
        attr_accessor :hasID
        attr_accessor :hasZ
        attr_accessor :hasM
        attr_accessor :extent
        attr_accessor :pointArray
        attr_accessor :spatialReference

        def initialize(hasID = nil, hasZ = nil, hasM = nil, extent = nil, pointArray = nil, spatialReference = nil)
          @hasID = hasID
          @hasZ = hasZ
          @hasM = hasM
          @extent = extent
          @pointArray = pointArray
          @spatialReference = spatialReference
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MultiPatch
      # abstract
      class MultiPatch < Geometry
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MultiPatchB
      #   bytes - SOAP::SOAPBase64
      class MultiPatchB < MultiPatch
        attr_accessor :bytes

        def initialize(bytes = nil)
          @bytes = bytes
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}MultiPatchN
      #   hasID - SOAP::SOAPBoolean
      #   hasZ - SOAP::SOAPBoolean
      #   hasM - SOAP::SOAPBoolean
      #   extent - ESRI::Soap::Envelope
      #   surfacePatchArray - ESRI::Soap::ArrayOfSurfacePatch
      class MultiPatchN < MultiPatch
        attr_accessor :hasID
        attr_accessor :hasZ
        attr_accessor :hasM
        attr_accessor :extent
        attr_accessor :surfacePatchArray

        def initialize(hasID = nil, hasZ = nil, hasM = nil, extent = nil, surfacePatchArray = nil)
          @hasID = hasID
          @hasZ = hasZ
          @hasM = hasM
          @extent = extent
          @surfacePatchArray = surfacePatchArray
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}TriangleFan
      #   pointArray - ESRI::Soap::ArrayOfPoint
      class TriangleFan < Geometry
        attr_accessor :pointArray

        def initialize(pointArray = nil)
          @pointArray = pointArray
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}TriangleStrip
      #   pointArray - ESRI::Soap::ArrayOfPoint
      class TriangleStrip < Geometry
        attr_accessor :pointArray

        def initialize(pointArray = nil)
          @pointArray = pointArray
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfPoint
      class ArrayOfPoint < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfPath
      class ArrayOfPath < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfRing
      class ArrayOfRing < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfSegment
      class ArrayOfSegment < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ArrayOfSurfacePatch
      class ArrayOfSurfacePatch < ::Array
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriIdentifyOption
      class EsriIdentifyOption < ::String
        EsriIdentifyAllLayers = EsriIdentifyOption.new("esriIdentifyAllLayers")
        EsriIdentifyTopmost = EsriIdentifyOption.new("esriIdentifyTopmost")
        EsriIdentifyVisibleLayers = EsriIdentifyOption.new("esriIdentifyVisibleLayers")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriFindOption
      class EsriFindOption < ::String
        EsriFindAllLayers = EsriFindOption.new("esriFindAllLayers")
        EsriFindVisibleLayers = EsriFindOption.new("esriFindVisibleLayers")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriImageFormat
      class EsriImageFormat < ::String
        EsriImageAI = EsriImageFormat.new("esriImageAI")
        EsriImageBMP = EsriImageFormat.new("esriImageBMP")
        EsriImageDIB = EsriImageFormat.new("esriImageDIB")
        EsriImageEMF = EsriImageFormat.new("esriImageEMF")
        EsriImageGIF = EsriImageFormat.new("esriImageGIF")
        EsriImageJPG = EsriImageFormat.new("esriImageJPG")
        EsriImageNone = EsriImageFormat.new("esriImageNone")
        EsriImagePDF = EsriImageFormat.new("esriImagePDF")
        EsriImagePNG = EsriImageFormat.new("esriImagePNG")
        EsriImagePNG24 = EsriImageFormat.new("esriImagePNG24")
        EsriImagePS = EsriImageFormat.new("esriImagePS")
        EsriImageSVG = EsriImageFormat.new("esriImageSVG")
        EsriImageTIFF = EsriImageFormat.new("esriImageTIFF")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriScaleBarPos
      class EsriScaleBarPos < ::String
        EsriScaleBarAbove = EsriScaleBarPos.new("esriScaleBarAbove")
        EsriScaleBarAfterBar = EsriScaleBarPos.new("esriScaleBarAfterBar")
        EsriScaleBarAfterLabels = EsriScaleBarPos.new("esriScaleBarAfterLabels")
        EsriScaleBarBeforeBar = EsriScaleBarPos.new("esriScaleBarBeforeBar")
        EsriScaleBarBeforeLabels = EsriScaleBarPos.new("esriScaleBarBeforeLabels")
        EsriScaleBarBelow = EsriScaleBarPos.new("esriScaleBarBelow")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriVertPosEnum
      class EsriVertPosEnum < ::String
        EsriAbove = EsriVertPosEnum.new("esriAbove")
        EsriBelow = EsriVertPosEnum.new("esriBelow")
        EsriBottom = EsriVertPosEnum.new("esriBottom")
        EsriOn = EsriVertPosEnum.new("esriOn")
        EsriTop = EsriVertPosEnum.new("esriTop")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriScaleBarFrequency
      class EsriScaleBarFrequency < ::String
        EsriScaleBarDivisions = EsriScaleBarFrequency.new("esriScaleBarDivisions")
        EsriScaleBarDivisionsAndFirstMidpoint = EsriScaleBarFrequency.new("esriScaleBarDivisionsAndFirstMidpoint")
        EsriScaleBarDivisionsAndFirstSubdivisions = EsriScaleBarFrequency.new("esriScaleBarDivisionsAndFirstSubdivisions")
        EsriScaleBarDivisionsAndSubdivisions = EsriScaleBarFrequency.new("esriScaleBarDivisionsAndSubdivisions")
        EsriScaleBarMajorDivisions = EsriScaleBarFrequency.new("esriScaleBarMajorDivisions")
        EsriScaleBarNone = EsriScaleBarFrequency.new("esriScaleBarNone")
        EsriScaleBarOne = EsriScaleBarFrequency.new("esriScaleBarOne")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriScaleBarResizeHint
      class EsriScaleBarResizeHint < ::String
        EsriScaleBarAutoDivision = EsriScaleBarResizeHint.new("esriScaleBarAutoDivision")
        EsriScaleBarAutoDivisions = EsriScaleBarResizeHint.new("esriScaleBarAutoDivisions")
        EsriScaleBarFixed = EsriScaleBarResizeHint.new("esriScaleBarFixed")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriImageReturnType
      class EsriImageReturnType < ::String
        EsriImageReturnMimeData = EsriImageReturnType.new("esriImageReturnMimeData")
        EsriImageReturnURL = EsriImageReturnType.new("esriImageReturnURL")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriCachedMapServiceType
      class EsriCachedMapServiceType < ::String
        EsriIndividualLayerCaches = EsriCachedMapServiceType.new("esriIndividualLayerCaches")
        EsriSingleFusedMapCache = EsriCachedMapServiceType.new("esriSingleFusedMapCache")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriQueryResultFormat
      class EsriQueryResultFormat < ::String
        EsriQueryResultKMLAsMime = EsriQueryResultFormat.new("esriQueryResultKMLAsMime")
        EsriQueryResultKMLAsURL = EsriQueryResultFormat.new("esriQueryResultKMLAsURL")
        EsriQueryResultRecordSetAsObject = EsriQueryResultFormat.new("esriQueryResultRecordSetAsObject")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriSimpleFillStyle
      class EsriSimpleFillStyle < ::String
        EsriSFSBackwardDiagonal = EsriSimpleFillStyle.new("esriSFSBackwardDiagonal")
        EsriSFSCross = EsriSimpleFillStyle.new("esriSFSCross")
        EsriSFSDiagonalCross = EsriSimpleFillStyle.new("esriSFSDiagonalCross")
        EsriSFSForwardDiagonal = EsriSimpleFillStyle.new("esriSFSForwardDiagonal")
        EsriSFSHorizontal = EsriSimpleFillStyle.new("esriSFSHorizontal")
        EsriSFSNull = EsriSimpleFillStyle.new("esriSFSNull")
        EsriSFSSolid = EsriSimpleFillStyle.new("esriSFSSolid")
        EsriSFSVertical = EsriSimpleFillStyle.new("esriSFSVertical")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriSimpleLineStyle
      class EsriSimpleLineStyle < ::String
        EsriSLSDash = EsriSimpleLineStyle.new("esriSLSDash")
        EsriSLSDashDotDot = EsriSimpleLineStyle.new("esriSLSDashDotDot")
        EsriSLSDot = EsriSimpleLineStyle.new("esriSLSDot")
        EsriSLSInsideFrame = EsriSimpleLineStyle.new("esriSLSInsideFrame")
        EsriSLSNull = EsriSimpleLineStyle.new("esriSLSNull")
        EsriSLSSolid = EsriSimpleLineStyle.new("esriSLSSolid")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriSimpleMarkerStyle
      class EsriSimpleMarkerStyle < ::String
        EsriSMSCircle = EsriSimpleMarkerStyle.new("esriSMSCircle")
        EsriSMSCross = EsriSimpleMarkerStyle.new("esriSMSCross")
        EsriSMSDiamond = EsriSimpleMarkerStyle.new("esriSMSDiamond")
        EsriSMSSquare = EsriSimpleMarkerStyle.new("esriSMSSquare")
        EsriSMSX = EsriSimpleMarkerStyle.new("esriSMSX")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriTextHorizontalAlignment
      class EsriTextHorizontalAlignment < ::String
        EsriTHACenter = EsriTextHorizontalAlignment.new("esriTHACenter")
        EsriTHAFull = EsriTextHorizontalAlignment.new("esriTHAFull")
        EsriTHALeft = EsriTextHorizontalAlignment.new("esriTHALeft")
        EsriTHARight = EsriTextHorizontalAlignment.new("esriTHARight")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriTextVerticalAlignment
      class EsriTextVerticalAlignment < ::String
        EsriTVABaseline = EsriTextVerticalAlignment.new("esriTVABaseline")
        EsriTVABottom = EsriTextVerticalAlignment.new("esriTVABottom")
        EsriTVACenter = EsriTextVerticalAlignment.new("esriTVACenter")
        EsriTVATop = EsriTextVerticalAlignment.new("esriTVATop")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriTextPosition
      class EsriTextPosition < ::String
        EsriTPNormal = EsriTextPosition.new("esriTPNormal")
        EsriTPSubscript = EsriTextPosition.new("esriTPSubscript")
        EsriTPSuperscript = EsriTextPosition.new("esriTPSuperscript")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriTextCase
      class EsriTextCase < ::String
        EsriTCAllCaps = EsriTextCase.new("esriTCAllCaps")
        EsriTCLowercase = EsriTextCase.new("esriTCLowercase")
        EsriTCNormal = EsriTextCase.new("esriTCNormal")
        EsriTCSmallCaps = EsriTextCase.new("esriTCSmallCaps")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriTextDirection
      class EsriTextDirection < ::String
        EsriTDAngle = EsriTextDirection.new("esriTDAngle")
        EsriTDHorizontal = EsriTextDirection.new("esriTDHorizontal")
        EsriTDVertical = EsriTextDirection.new("esriTDVertical")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriMaskStyle
      class EsriMaskStyle < ::String
        EsriMSHalo = EsriMaskStyle.new("esriMSHalo")
        EsriMSNone = EsriMaskStyle.new("esriMSNone")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriFieldType
      class EsriFieldType < ::String
        EsriFieldTypeBlob = EsriFieldType.new("esriFieldTypeBlob")
        EsriFieldTypeDate = EsriFieldType.new("esriFieldTypeDate")
        EsriFieldTypeDouble = EsriFieldType.new("esriFieldTypeDouble")
        EsriFieldTypeGUID = EsriFieldType.new("esriFieldTypeGUID")
        EsriFieldTypeGeometry = EsriFieldType.new("esriFieldTypeGeometry")
        EsriFieldTypeGlobalID = EsriFieldType.new("esriFieldTypeGlobalID")
        EsriFieldTypeInteger = EsriFieldType.new("esriFieldTypeInteger")
        EsriFieldTypeOID = EsriFieldType.new("esriFieldTypeOID")
        EsriFieldTypeRaster = EsriFieldType.new("esriFieldTypeRaster")
        EsriFieldTypeSingle = EsriFieldType.new("esriFieldTypeSingle")
        EsriFieldTypeSmallInteger = EsriFieldType.new("esriFieldTypeSmallInteger")
        EsriFieldTypeString = EsriFieldType.new("esriFieldTypeString")
        EsriFieldTypeXML = EsriFieldType.new("esriFieldTypeXML")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriMergePolicyType
      class EsriMergePolicyType < ::String
        EsriMPTAreaWeighted = EsriMergePolicyType.new("esriMPTAreaWeighted")
        EsriMPTDefaultValue = EsriMergePolicyType.new("esriMPTDefaultValue")
        EsriMPTSumValues = EsriMergePolicyType.new("esriMPTSumValues")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriSplitPolicyType
      class EsriSplitPolicyType < ::String
        EsriSPTDefaultValue = EsriSplitPolicyType.new("esriSPTDefaultValue")
        EsriSPTDuplicate = EsriSplitPolicyType.new("esriSPTDuplicate")
        EsriSPTGeometryRatio = EsriSplitPolicyType.new("esriSPTGeometryRatio")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriSearchOrder
      class EsriSearchOrder < ::String
        EsriSearchOrderAttribute = EsriSearchOrder.new("esriSearchOrderAttribute")
        EsriSearchOrderSpatial = EsriSearchOrder.new("esriSearchOrderSpatial")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriSpatialRelEnum
      class EsriSpatialRelEnum < ::String
        EsriSpatialRelContains = EsriSpatialRelEnum.new("esriSpatialRelContains")
        EsriSpatialRelCrosses = EsriSpatialRelEnum.new("esriSpatialRelCrosses")
        EsriSpatialRelEnvelopeIntersects = EsriSpatialRelEnum.new("esriSpatialRelEnvelopeIntersects")
        EsriSpatialRelIndexIntersects = EsriSpatialRelEnum.new("esriSpatialRelIndexIntersects")
        EsriSpatialRelIntersects = EsriSpatialRelEnum.new("esriSpatialRelIntersects")
        EsriSpatialRelOverlaps = EsriSpatialRelEnum.new("esriSpatialRelOverlaps")
        EsriSpatialRelRelation = EsriSpatialRelEnum.new("esriSpatialRelRelation")
        EsriSpatialRelTouches = EsriSpatialRelEnum.new("esriSpatialRelTouches")
        EsriSpatialRelUndefined = EsriSpatialRelEnum.new("esriSpatialRelUndefined")
        EsriSpatialRelWithin = EsriSpatialRelEnum.new("esriSpatialRelWithin")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriUnits
      class EsriUnits < ::String
        EsriCentimeters = EsriUnits.new("esriCentimeters")
        EsriDecimalDegrees = EsriUnits.new("esriDecimalDegrees")
        EsriDecimeters = EsriUnits.new("esriDecimeters")
        EsriFeet = EsriUnits.new("esriFeet")
        EsriInches = EsriUnits.new("esriInches")
        EsriKilometers = EsriUnits.new("esriKilometers")
        EsriMeters = EsriUnits.new("esriMeters")
        EsriMiles = EsriUnits.new("esriMiles")
        EsriMillimeters = EsriUnits.new("esriMillimeters")
        EsriNauticalMiles = EsriUnits.new("esriNauticalMiles")
        EsriPoints = EsriUnits.new("esriPoints")
        EsriUnknownUnits = EsriUnits.new("esriUnknownUnits")
        EsriYards = EsriUnits.new("esriYards")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriRoundingOptionEnum
      class EsriRoundingOptionEnum < ::String
        EsriRoundNumberOfDecimals = EsriRoundingOptionEnum.new("esriRoundNumberOfDecimals")
        EsriRoundNumberOfSignificantDigits = EsriRoundingOptionEnum.new("esriRoundNumberOfSignificantDigits")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriNumericAlignmentEnum
      class EsriNumericAlignmentEnum < ::String
        EsriAlignLeft = EsriNumericAlignmentEnum.new("esriAlignLeft")
        EsriAlignRight = EsriNumericAlignmentEnum.new("esriAlignRight")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}esriGeometryType
      class EsriGeometryType < ::String
        EsriGeometryMultiPatch = EsriGeometryType.new("esriGeometryMultiPatch")
        EsriGeometryMultipoint = EsriGeometryType.new("esriGeometryMultipoint")
        EsriGeometryPoint = EsriGeometryType.new("esriGeometryPoint")
        EsriGeometryPolygon = EsriGeometryType.new("esriGeometryPolygon")
        EsriGeometryPolyline = EsriGeometryType.new("esriGeometryPolyline")
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetDocumentInfo
      class GetDocumentInfo
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetDocumentInfoResponse
      #   result - ESRI::Soap::PropertySet
      class GetDocumentInfoResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetMapCount
      class GetMapCount
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetMapCountResponse
      #   result - SOAP::SOAPInt
      class GetMapCountResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetMapName
      #   index - SOAP::SOAPInt
      class GetMapName
        attr_accessor :index

        def initialize(index = nil)
          @index = index
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetMapNameResponse
      #   result - SOAP::SOAPString
      class GetMapNameResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetDefaultMapName
      class GetDefaultMapName
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetDefaultMapNameResponse
      #   result - SOAP::SOAPString
      class GetDefaultMapNameResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetServerInfo
      #   mapName - SOAP::SOAPString
      class GetServerInfo
        attr_accessor :mapName

        def initialize(mapName = nil)
          @mapName = mapName
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetServerInfoResponse
      #   result - ESRI::Soap::MapServerInfo
      class GetServerInfoResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ExportMapImage
      #   mapDescription - ESRI::Soap::MapDescription
      #   imageDescription - ESRI::Soap::ImageDescription
      class ExportMapImage
        attr_accessor :mapDescription
        attr_accessor :imageDescription

        def initialize(mapDescription = nil, imageDescription = nil)
          @mapDescription = mapDescription
          @imageDescription = imageDescription
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ExportMapImageResponse
      #   result - ESRI::Soap::MapImage
      class ExportMapImageResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ExportScaleBar
      #   scaleBar - ESRI::Soap::ScaleBar
      #   mapDescription - ESRI::Soap::MapDescription
      #   mapDisplay - ESRI::Soap::ImageDisplay
      #   backGroundColor - ESRI::Soap::Color
      #   imageDescription - ESRI::Soap::ImageDescription
      class ExportScaleBar
        attr_accessor :scaleBar
        attr_accessor :mapDescription
        attr_accessor :mapDisplay
        attr_accessor :backGroundColor
        attr_accessor :imageDescription

        def initialize(scaleBar = nil, mapDescription = nil, mapDisplay = nil, backGroundColor = nil, imageDescription = nil)
          @scaleBar = scaleBar
          @mapDescription = mapDescription
          @mapDisplay = mapDisplay
          @backGroundColor = backGroundColor
          @imageDescription = imageDescription
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ExportScaleBarResponse
      #   result - ESRI::Soap::ImageResult
      class ExportScaleBarResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Find
      #   mapDescription - ESRI::Soap::MapDescription
      #   mapImageDisplay - ESRI::Soap::ImageDisplay
      #   searchString - SOAP::SOAPString
      #   contains - SOAP::SOAPBoolean
      #   searchFields - SOAP::SOAPString
      #   findOption - ESRI::Soap::EsriFindOption
      #   layerIDs - ESRI::Soap::ArrayOfInt
      class Find
        attr_accessor :mapDescription
        attr_accessor :mapImageDisplay
        attr_accessor :searchString
        attr_accessor :contains
        attr_accessor :searchFields
        attr_accessor :findOption
        attr_accessor :layerIDs

        def initialize(mapDescription = nil, mapImageDisplay = nil, searchString = nil, contains = nil, searchFields = nil, findOption = nil, layerIDs = nil)
          @mapDescription = mapDescription
          @mapImageDisplay = mapImageDisplay
          @searchString = searchString
          @contains = contains
          @searchFields = searchFields
          @findOption = findOption
          @layerIDs = layerIDs
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}FindResponse
      #   result - ESRI::Soap::ArrayOfMapServerFindResult
      class FindResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}Identify
      #   mapDescription - ESRI::Soap::MapDescription
      #   mapImageDisplay - ESRI::Soap::ImageDisplay
      #   searchShape - ESRI::Soap::Geometry
      #   tolerance - SOAP::SOAPInt
      #   identifyOption - ESRI::Soap::EsriIdentifyOption
      #   layerIDs - ESRI::Soap::ArrayOfInt
      class Identify
        attr_accessor :mapDescription
        attr_accessor :mapImageDisplay
        attr_accessor :searchShape
        attr_accessor :tolerance
        attr_accessor :identifyOption
        attr_accessor :layerIDs

        def initialize(mapDescription = nil, mapImageDisplay = nil, searchShape = nil, tolerance = nil, identifyOption = nil, layerIDs = nil)
          @mapDescription = mapDescription
          @mapImageDisplay = mapImageDisplay
          @searchShape = searchShape
          @tolerance = tolerance
          @identifyOption = identifyOption
          @layerIDs = layerIDs
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}IdentifyResponse
      #   result - ESRI::Soap::ArrayOfMapServerIdentifyResult
      class IdentifyResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryFeatureCount
      #   mapName - SOAP::SOAPString
      #   layerID - SOAP::SOAPInt
      #   queryFilter - ESRI::Soap::QueryFilter
      class QueryFeatureCount
        attr_accessor :mapName
        attr_accessor :layerID
        attr_accessor :queryFilter

        def initialize(mapName = nil, layerID = nil, queryFilter = nil)
          @mapName = mapName
          @layerID = layerID
          @queryFilter = queryFilter
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryFeatureCountResponse
      #   result - SOAP::SOAPInt
      class QueryFeatureCountResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryFeatureIDs
      #   mapName - SOAP::SOAPString
      #   layerID - SOAP::SOAPInt
      #   queryFilter - ESRI::Soap::QueryFilter
      class QueryFeatureIDs
        attr_accessor :mapName
        attr_accessor :layerID
        attr_accessor :queryFilter

        def initialize(mapName = nil, layerID = nil, queryFilter = nil)
          @mapName = mapName
          @layerID = layerID
          @queryFilter = queryFilter
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryFeatureIDsResponse
      #   result - ESRI::Soap::FIDSet
      class QueryFeatureIDsResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryFeatureData
      #   mapName - SOAP::SOAPString
      #   layerID - SOAP::SOAPInt
      #   queryFilter - ESRI::Soap::QueryFilter
      class QueryFeatureData
        attr_accessor :mapName
        attr_accessor :layerID
        attr_accessor :queryFilter

        def initialize(mapName = nil, layerID = nil, queryFilter = nil)
          @mapName = mapName
          @layerID = layerID
          @queryFilter = queryFilter
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryFeatureDataResponse
      #   result - ESRI::Soap::RecordSet
      class QueryFeatureDataResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryFeatureCount2
      #   mapName - SOAP::SOAPString
      #   layerDescription - ESRI::Soap::LayerDescription
      #   queryFilter - ESRI::Soap::QueryFilter
      class QueryFeatureCount2
        attr_accessor :mapName
        attr_accessor :layerDescription
        attr_accessor :queryFilter

        def initialize(mapName = nil, layerDescription = nil, queryFilter = nil)
          @mapName = mapName
          @layerDescription = layerDescription
          @queryFilter = queryFilter
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryFeatureCount2Response
      #   result - SOAP::SOAPInt
      class QueryFeatureCount2Response
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryFeatureIDs2
      #   mapName - SOAP::SOAPString
      #   layerDescription - ESRI::Soap::LayerDescription
      #   queryFilter - ESRI::Soap::QueryFilter
      class QueryFeatureIDs2
        attr_accessor :mapName
        attr_accessor :layerDescription
        attr_accessor :queryFilter

        def initialize(mapName = nil, layerDescription = nil, queryFilter = nil)
          @mapName = mapName
          @layerDescription = layerDescription
          @queryFilter = queryFilter
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryFeatureIDs2Response
      #   result - ESRI::Soap::FIDSet
      class QueryFeatureIDs2Response
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryFeatureData2
      #   mapName - SOAP::SOAPString
      #   layerDescription - ESRI::Soap::LayerDescription
      #   queryFilter - ESRI::Soap::QueryFilter
      #   queryResultOptions - ESRI::Soap::QueryResultOptions
      class QueryFeatureData2
        attr_accessor :mapName
        attr_accessor :layerDescription
        attr_accessor :queryFilter
        attr_accessor :queryResultOptions

        def initialize(mapName = nil, layerDescription = nil, queryFilter = nil, queryResultOptions = nil)
          @mapName = mapName
          @layerDescription = layerDescription
          @queryFilter = queryFilter
          @queryResultOptions = queryResultOptions
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryFeatureData2Response
      #   result - ESRI::Soap::QueryResult
      class QueryFeatureData2Response
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryHyperlinks
      #   mapDescription - ESRI::Soap::MapDescription
      #   mapImageDisplay - ESRI::Soap::ImageDisplay
      #   layerIDs - ESRI::Soap::ArrayOfInt
      class QueryHyperlinks
        attr_accessor :mapDescription
        attr_accessor :mapImageDisplay
        attr_accessor :layerIDs

        def initialize(mapDescription = nil, mapImageDisplay = nil, layerIDs = nil)
          @mapDescription = mapDescription
          @mapImageDisplay = mapImageDisplay
          @layerIDs = layerIDs
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}QueryHyperlinksResponse
      #   result - ESRI::Soap::ArrayOfMapServerHyperlink
      class QueryHyperlinksResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ComputeScale
      #   mapDescription - ESRI::Soap::MapDescription
      #   mapImageDisplay - ESRI::Soap::ImageDisplay
      class ComputeScale
        attr_accessor :mapDescription
        attr_accessor :mapImageDisplay

        def initialize(mapDescription = nil, mapImageDisplay = nil)
          @mapDescription = mapDescription
          @mapImageDisplay = mapImageDisplay
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ComputeScaleResponse
      #   result - SOAP::SOAPDouble
      class ComputeScaleResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ComputeDistance
      #   mapName - SOAP::SOAPString
      #   fromPoint - ESRI::Soap::Point
      #   toPoint - ESRI::Soap::Point
      #   units - ESRI::Soap::EsriUnits
      class ComputeDistance
        attr_accessor :mapName
        attr_accessor :fromPoint
        attr_accessor :toPoint
        attr_accessor :units

        def initialize(mapName = nil, fromPoint = nil, toPoint = nil, units = nil)
          @mapName = mapName
          @fromPoint = fromPoint
          @toPoint = toPoint
          @units = units
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ComputeDistanceResponse
      #   result - SOAP::SOAPDouble
      class ComputeDistanceResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ToMapPoints
      #   mapDescription - ESRI::Soap::MapDescription
      #   mapImageDisplay - ESRI::Soap::ImageDisplay
      #   screenXValues - ESRI::Soap::ArrayOfInt
      #   screenYValues - ESRI::Soap::ArrayOfInt
      class ToMapPoints
        attr_accessor :mapDescription
        attr_accessor :mapImageDisplay
        attr_accessor :screenXValues
        attr_accessor :screenYValues

        def initialize(mapDescription = nil, mapImageDisplay = nil, screenXValues = nil, screenYValues = nil)
          @mapDescription = mapDescription
          @mapImageDisplay = mapImageDisplay
          @screenXValues = screenXValues
          @screenYValues = screenYValues
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}ToMapPointsResponse
      #   result - ESRI::Soap::Multipoint
      class ToMapPointsResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}FromMapPoints
      #   mapDescription - ESRI::Soap::MapDescription
      #   mapImageDisplay - ESRI::Soap::ImageDisplay
      #   mapPoints - ESRI::Soap::Multipoint
      class FromMapPoints
        attr_accessor :mapDescription
        attr_accessor :mapImageDisplay
        attr_accessor :mapPoints

        def initialize(mapDescription = nil, mapImageDisplay = nil, mapPoints = nil)
          @mapDescription = mapDescription
          @mapImageDisplay = mapImageDisplay
          @mapPoints = mapPoints
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}FromMapPointsResponse
      #   screenXValues - ESRI::Soap::ArrayOfInt
      #   screenYValues - ESRI::Soap::ArrayOfInt
      class FromMapPointsResponse
        attr_accessor :screenXValues
        attr_accessor :screenYValues

        def initialize(screenXValues = nil, screenYValues = nil)
          @screenXValues = screenXValues
          @screenYValues = screenYValues
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetLegendInfo
      #   mapName - SOAP::SOAPString
      #   layerIDs - ESRI::Soap::ArrayOfInt
      #   legendPatch - ESRI::Soap::MapServerLegendPatch
      #   imageType - ESRI::Soap::ImageType
      class GetLegendInfo
        attr_accessor :mapName
        attr_accessor :layerIDs
        attr_accessor :legendPatch
        attr_accessor :imageType

        def initialize(mapName = nil, layerIDs = nil, legendPatch = nil, imageType = nil)
          @mapName = mapName
          @layerIDs = layerIDs
          @legendPatch = legendPatch
          @imageType = imageType
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetLegendInfoResponse
      #   result - ESRI::Soap::ArrayOfMapServerLegendInfo
      class GetLegendInfoResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetSQLSyntaxInfo
      #   mapName - SOAP::SOAPString
      #   layerID - SOAP::SOAPInt
      class GetSQLSyntaxInfo
        attr_accessor :mapName
        attr_accessor :layerID

        def initialize(mapName = nil, layerID = nil)
          @mapName = mapName
          @layerID = layerID
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetSQLSyntaxInfoResponse
      #   result - ESRI::Soap::SQLSyntaxInfo
      class GetSQLSyntaxInfoResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetSupportedImageReturnTypes
      class GetSupportedImageReturnTypes
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetSupportedImageReturnTypesResponse
      #   result - ESRI::Soap::EsriImageReturnType
      class GetSupportedImageReturnTypesResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}IsFixedScaleMap
      #   mapName - SOAP::SOAPString
      class IsFixedScaleMap
        attr_accessor :mapName

        def initialize(mapName = nil)
          @mapName = mapName
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}IsFixedScaleMapResponse
      #   result - SOAP::SOAPBoolean
      class IsFixedScaleMapResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}HasSingleFusedMapCache
      #   mapName - SOAP::SOAPString
      class HasSingleFusedMapCache
        attr_accessor :mapName

        def initialize(mapName = nil)
          @mapName = mapName
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}HasSingleFusedMapCacheResponse
      #   result - SOAP::SOAPBoolean
      class HasSingleFusedMapCacheResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetTileCacheInfo
      #   mapName - SOAP::SOAPString
      class GetTileCacheInfo
        attr_accessor :mapName

        def initialize(mapName = nil)
          @mapName = mapName
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetTileCacheInfoResponse
      #   result - ESRI::Soap::TileCacheInfo
      class GetTileCacheInfoResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetMapTile
      #   mapName - SOAP::SOAPString
      #   level - SOAP::SOAPInt
      #   row - SOAP::SOAPInt
      #   column - SOAP::SOAPInt
      #   format - SOAP::SOAPString
      class GetMapTile
        attr_accessor :mapName
        attr_accessor :level
        attr_accessor :row
        attr_accessor :column
        attr_accessor :format

        def initialize(mapName = nil, level = nil, row = nil, column = nil, format = nil)
          @mapName = mapName
          @level = level
          @row = row
          @column = column
          @format = format
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetMapTileResponse
      #   result - SOAP::SOAPBase64
      class GetMapTileResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}HasLayerCache
      #   mapName - SOAP::SOAPString
      #   layerID - SOAP::SOAPInt
      class HasLayerCache
        attr_accessor :mapName
        attr_accessor :layerID

        def initialize(mapName = nil, layerID = nil)
          @mapName = mapName
          @layerID = layerID
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}HasLayerCacheResponse
      #   result - SOAP::SOAPBoolean
      class HasLayerCacheResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetLayerTile
      #   mapName - SOAP::SOAPString
      #   layerID - SOAP::SOAPInt
      #   level - SOAP::SOAPInt
      #   row - SOAP::SOAPInt
      #   column - SOAP::SOAPInt
      #   format - SOAP::SOAPString
      class GetLayerTile
        attr_accessor :mapName
        attr_accessor :layerID
        attr_accessor :level
        attr_accessor :row
        attr_accessor :column
        attr_accessor :format

        def initialize(mapName = nil, layerID = nil, level = nil, row = nil, column = nil, format = nil)
          @mapName = mapName
          @layerID = layerID
          @level = level
          @row = row
          @column = column
          @format = format
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetLayerTileResponse
      #   result - SOAP::SOAPBase64
      class GetLayerTileResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetVirtualCacheDirectory
      #   mapName - SOAP::SOAPString
      #   layerID - SOAP::SOAPInt
      class GetVirtualCacheDirectory
        attr_accessor :mapName
        attr_accessor :layerID

        def initialize(mapName = nil, layerID = nil)
          @mapName = mapName
          @layerID = layerID
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetVirtualCacheDirectoryResponse
      #   result - SOAP::SOAPString
      class GetVirtualCacheDirectoryResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetCacheName
      #   mapName - SOAP::SOAPString
      #   layerID - SOAP::SOAPInt
      class GetCacheName
        attr_accessor :mapName
        attr_accessor :layerID

        def initialize(mapName = nil, layerID = nil)
          @mapName = mapName
          @layerID = layerID
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetCacheNameResponse
      #   result - SOAP::SOAPString
      class GetCacheNameResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetTileImageInfo
      #   mapName - SOAP::SOAPString
      class GetTileImageInfo
        attr_accessor :mapName

        def initialize(mapName = nil)
          @mapName = mapName
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetTileImageInfoResponse
      #   result - ESRI::Soap::TileImageInfo
      class GetTileImageInfoResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetCacheControlInfo
      #   mapName - SOAP::SOAPString
      class GetCacheControlInfo
        attr_accessor :mapName

        def initialize(mapName = nil)
          @mapName = mapName
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetCacheControlInfoResponse
      #   result - ESRI::Soap::CacheControlInfo
      class GetCacheControlInfoResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetServiceConfigurationInfo
      class GetServiceConfigurationInfo
        def initialize
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetServiceConfigurationInfoResponse
      #   result - ESRI::Soap::PropertySet
      class GetServiceConfigurationInfoResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetCacheDescriptionInfo
      #   mapName - SOAP::SOAPString
      class GetCacheDescriptionInfo
        attr_accessor :mapName

        def initialize(mapName = nil)
          @mapName = mapName
        end
      end

      # {http://www.esri.com/schemas/ArcGIS/9.3}GetCacheDescriptionInfoResponse
      #   result - ESRI::Soap::CacheDescriptionInfo
      class GetCacheDescriptionInfoResponse
        attr_accessor :result

        def initialize(result = nil)
          @result = result
        end
      end
    end # MapServer
  end # Soap
end # ESRI
