classdef Wrench < iDynTree.SpatialForceVector
  methods
    function self = Wrench(varargin)
      self@iDynTree.SpatialForceVector('_swigCreate');
      if nargin~=1 || ~ischar(varargin{1}) || ~strcmp(varargin{1},'_swigCreate')
        % How to get working on C side? Commented out, replaed by hack below
        %self.swigInd = iDynTreeMATLAB_wrap(221, varargin{:});
        tmp = iDynTreeMATLAB_wrap(221, varargin{:}); % FIXME
        self.swigInd = tmp.swigInd;
        tmp.swigInd = uint64(0);
      end
    end
    function delete(self)
      if self.swigInd
        iDynTreeMATLAB_wrap(222, self);
        self.swigInd=uint64(0);
      end
    end
    function varargout = plus(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(223, self, varargin{:});
    end
    function varargout = minus(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(224, self, varargin{:});
    end
    function varargout = uminus(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(225, self, varargin{:});
    end
  end
  methods(Static)
  end
end
