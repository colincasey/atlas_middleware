require File.dirname(__FILE__) + '/classes.rb'
require File.dirname(__FILE__) + '/mapping_registry.rb'
require 'soap/rpc/driver'

module ESRI
  module Soap
    module MapServer

      class Client < ::SOAP::RPC::Driver
        DefaultEndpointUrl = nil

        Methods = [
          [ "",
            "getDocumentInfo",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetDocumentInfo"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetDocumentInfoResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getTileImageInfo",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetTileImageInfo"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetTileImageInfoResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "queryFeatureData2",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "QueryFeatureData2"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "QueryFeatureData2Response"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getMapName",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetMapName"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetMapNameResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getSQLSyntaxInfo",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetSQLSyntaxInfo"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetSQLSyntaxInfoResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "exportScaleBar",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "ExportScaleBar"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "ExportScaleBarResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getVirtualCacheDirectory",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetVirtualCacheDirectory"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetVirtualCacheDirectoryResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "computeDistance",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "ComputeDistance"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "ComputeDistanceResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getSupportedImageReturnTypes",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetSupportedImageReturnTypes"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetSupportedImageReturnTypesResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "queryFeatureIDs",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "QueryFeatureIDs"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "QueryFeatureIDsResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "queryFeatureData",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "QueryFeatureData"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "QueryFeatureDataResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "toMapPoints",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "ToMapPoints"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "ToMapPointsResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getTileCacheInfo",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetTileCacheInfo"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetTileCacheInfoResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "queryHyperlinks",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "QueryHyperlinks"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "QueryHyperlinksResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "hasLayerCache",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "HasLayerCache"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "HasLayerCacheResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "queryFeatureIDs2",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "QueryFeatureIDs2"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "QueryFeatureIDs2Response"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getDefaultMapName",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetDefaultMapName"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetDefaultMapNameResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "queryFeatureCount2",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "QueryFeatureCount2"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "QueryFeatureCount2Response"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "identify",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "Identify"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "IdentifyResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "isFixedScaleMap",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "IsFixedScaleMap"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "IsFixedScaleMapResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getLegendInfo",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetLegendInfo"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetLegendInfoResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "fromMapPoints",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "FromMapPoints"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "FromMapPointsResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getCacheDescriptionInfo",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetCacheDescriptionInfo"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetCacheDescriptionInfoResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getMapTile",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetMapTile"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetMapTileResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getLayerTile",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetLayerTile"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetLayerTileResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getServerInfo",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetServerInfo"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetServerInfoResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getMapCount",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetMapCount"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetMapCountResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "queryFeatureCount",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "QueryFeatureCount"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "QueryFeatureCountResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getServiceConfigurationInfo",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetServiceConfigurationInfo"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetServiceConfigurationInfoResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getCacheControlInfo",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetCacheControlInfo"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetCacheControlInfoResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "hasSingleFusedMapCache",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "HasSingleFusedMapCache"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "HasSingleFusedMapCacheResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "getCacheName",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetCacheName"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "GetCacheNameResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "computeScale",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "ComputeScale"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "ComputeScaleResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "find",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "Find"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "FindResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ],
          [ "",
            "exportMapImage",
            [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "ExportMapImage"]],
              ["out", "parameters", ["::SOAP::SOAPElement", "http://www.esri.com/schemas/ArcGIS/9.3", "ExportMapImageResponse"]] ],
            { :request_style =>  :document, :request_use =>  :literal,
              :response_style => :document, :response_use => :literal,
              :faults => {} }
          ]
        ]

        def initialize(endpoint_url = nil)
          endpoint_url ||= DefaultEndpointUrl
          super(endpoint_url, nil)
          self.mapping_registry = MappingRegistry::EncodedRegistry
          self.literal_mapping_registry = MappingRegistry::LiteralRegistry
          init_methods
        end

        private

        def init_methods
          Methods.each do |definitions|
            opt = definitions.last
            if opt[:request_style] == :document
              add_document_operation(*definitions)
            else
              add_rpc_operation(*definitions)
              qname = definitions[0]
              name = definitions[2]
              if qname.name != name and qname.name.capitalize == name.capitalize
                ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
                  __send__(name, *arg)
                end
              end
            end
          end
        end
      end

    end # MapServer
  end # Soap
end #ESRI
