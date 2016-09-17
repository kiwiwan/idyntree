classdef ContactWrench < SwigRef
  methods
    function this = swig_this(self)
      this = iDynTreeMEX(3, self);
    end
    function varargout = contactId(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1056, self, varargin{:});
    end
    function varargout = contactPoint(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1057, self, varargin{:});
    end
    function varargout = contactWrench(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1058, self, varargin{:});
    end
    function self = ContactWrench(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = iDynTreeMEX(1059, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.swigPtr = [];
      end
    end
    function delete(self)
      if self.swigPtr
        iDynTreeMEX(1060, self);
        self.swigPtr=[];
      end
    end
  end
  methods(Static)
  end
end
