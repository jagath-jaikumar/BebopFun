# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from april_tag/AprilTag.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class AprilTag(genpy.Message):
  _md5sum = "be890ac3bb9849ceca6044551db294c3"
  _type = "april_tag/AprilTag"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint32 	id
uint32 	hamming_distance
float64 distance
float64 x
float64 y
float64 z
float64 yaw
float64 pitch
float64 roll
"""
  __slots__ = ['id','hamming_distance','distance','x','y','z','yaw','pitch','roll']
  _slot_types = ['uint32','uint32','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,hamming_distance,distance,x,y,z,yaw,pitch,roll

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AprilTag, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.hamming_distance is None:
        self.hamming_distance = 0
      if self.distance is None:
        self.distance = 0.
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.z is None:
        self.z = 0.
      if self.yaw is None:
        self.yaw = 0.
      if self.pitch is None:
        self.pitch = 0.
      if self.roll is None:
        self.roll = 0.
    else:
      self.id = 0
      self.hamming_distance = 0
      self.distance = 0.
      self.x = 0.
      self.y = 0.
      self.z = 0.
      self.yaw = 0.
      self.pitch = 0.
      self.roll = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2I7d().pack(_x.id, _x.hamming_distance, _x.distance, _x.x, _x.y, _x.z, _x.yaw, _x.pitch, _x.roll))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 64
      (_x.id, _x.hamming_distance, _x.distance, _x.x, _x.y, _x.z, _x.yaw, _x.pitch, _x.roll,) = _get_struct_2I7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2I7d().pack(_x.id, _x.hamming_distance, _x.distance, _x.x, _x.y, _x.z, _x.yaw, _x.pitch, _x.roll))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 64
      (_x.id, _x.hamming_distance, _x.distance, _x.x, _x.y, _x.z, _x.yaw, _x.pitch, _x.roll,) = _get_struct_2I7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I7d = None
def _get_struct_2I7d():
    global _struct_2I7d
    if _struct_2I7d is None:
        _struct_2I7d = struct.Struct("<2I7d")
    return _struct_2I7d