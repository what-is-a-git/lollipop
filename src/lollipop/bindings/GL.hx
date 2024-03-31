package lollipop.bindings;

import cxx.VoidPtr;
import cxx.ConstCharPtr;
import cxx.Const;
import cxx.Ptr;
import cxx.num.Float32;
import cxx.num.UInt8;
import cxx.num.UInt16;
import cxx.num.UInt32;
import cxx.num.UInt64;
import cxx.num.Int8;
import cxx.num.Int16;
import cxx.num.Int32;
import cxx.num.Int64;

typedef GLEnum = UInt32;
typedef GLBool = UInt32;
typedef GLBitField = UInt32;
typedef GLByte = Int8;
typedef GLUByte = UInt8;
typedef GLShort = Int16;
typedef GLUShort = UInt16;
typedef GLInt = Int32;
typedef GLUInt = UInt32;
typedef GLClampX = Int32;
typedef GLSizeI = Int32;
typedef GLFloat = Float32;
typedef GLDouble = Float;
typedef GLChar = Int8;
typedef GLFixed = Int32;
typedef GLIntPointer = Ptr<Int32>;
typedef GLSizeIPointer = Ptr<Int64>;
typedef GLInt64 = Int64;
typedef GLUInt64 = UInt64;
typedef ConstPtr<T> = Const<Ptr<T>>;
typedef GLDebugProc = (source:GLEnum, type:GLEnum, severity:GLEnum, length:GLSizeI, message:ConstCharPtr, userParam:Const<VoidPtr>) -> Void;

@:include('glad/gl.h')
@:structAccess
@:native('GLsync')
class GLSync {}

@:include('glad/gl.h')
@:extern
class GL {
    // GLAD //
    @:native('gladLoadGL')
    public extern static function load(callback:ConstCharPtr -> Void):Int;

    // Actual OpenGL Stuff //
    // Thanks SRT(Hero278) and Blueprint funnies //

    // Constants / Macros //

    @:native('GL_DEPTH_BUFFER_BIT')
	public extern static final DEPTH_BUFFER_BIT:Int;
	@:native('GL_STENCIL_BUFFER_BIT')
	public extern static final STENCIL_BUFFER_BIT:Int;
	@:native('GL_COLOR_BUFFER_BIT')
	public extern static final COLOR_BUFFER_BIT:Int;
	@:native('GL_FALSE')
	public extern static final FALSE:Int;
	@:native('GL_TRUE')
	public extern static final TRUE:Int;
	@:native('GL_POINTS')
	public extern static final POINTS:Int;
	@:native('GL_LINES')
	public extern static final LINES:Int;
	@:native('GL_LINE_LOOP')
	public extern static final LINE_LOOP:Int;
	@:native('GL_LINE_STRIP')
	public extern static final LINE_STRIP:Int;
	@:native('GL_TRIANGLES')
	public extern static final TRIANGLES:Int;
	@:native('GL_TRIANGLE_STRIP')
	public extern static final TRIANGLE_STRIP:Int;
	@:native('GL_TRIANGLE_FAN')
	public extern static final TRIANGLE_FAN:Int;
	@:native('GL_NEVER')
	public extern static final NEVER:Int;
	@:native('GL_LESS')
	public extern static final LESS:Int;
	@:native('GL_EQUAL')
	public extern static final EQUAL:Int;
	@:native('GL_LEQUAL')
	public extern static final LEQUAL:Int;
	@:native('GL_GREATER')
	public extern static final GREATER:Int;
	@:native('GL_NOTEQUAL')
	public extern static final NOTEQUAL:Int;
	@:native('GL_GEQUAL')
	public extern static final GEQUAL:Int;
	@:native('GL_ALWAYS')
	public extern static final ALWAYS:Int;
	@:native('GL_ZERO')
	public extern static final ZERO:Int;
	@:native('GL_ONE')
	public extern static final ONE:Int;
	@:native('GL_SRC_COLOR')
	public extern static final SRC_COLOR:Int;
	@:native('GL_ONE_MINUS_SRC_COLOR')
	public extern static final ONE_MINUS_SRC_COLOR:Int;
	@:native('GL_SRC_ALPHA')
	public extern static final SRC_ALPHA:Int;
	@:native('GL_ONE_MINUS_SRC_ALPHA')
	public extern static final ONE_MINUS_SRC_ALPHA:Int;
	@:native('GL_DST_ALPHA')
	public extern static final DST_ALPHA:Int;
	@:native('GL_ONE_MINUS_DST_ALPHA')
	public extern static final ONE_MINUS_DST_ALPHA:Int;
	@:native('GL_DST_COLOR')
	public extern static final DST_COLOR:Int;
	@:native('GL_ONE_MINUS_DST_COLOR')
	public extern static final ONE_MINUS_DST_COLOR:Int;
	@:native('GL_SRC_ALPHA_SATURATE')
	public extern static final SRC_ALPHA_SATURATE:Int;
	@:native('GL_NONE')
	public extern static final NONE:Int;
	@:native('GL_FRONT_LEFT')
	public extern static final FRONT_LEFT:Int;
	@:native('GL_FRONT_RIGHT')
	public extern static final FRONT_RIGHT:Int;
	@:native('GL_BACK_LEFT')
	public extern static final BACK_LEFT:Int;
	@:native('GL_BACK_RIGHT')
	public extern static final BACK_RIGHT:Int;
	@:native('GL_FRONT')
	public extern static final FRONT:Int;
	@:native('GL_BACK')
	public extern static final BACK:Int;
	@:native('GL_LEFT')
	public extern static final LEFT:Int;
	@:native('GL_RIGHT')
	public extern static final RIGHT:Int;
	@:native('GL_FRONT_AND_BACK')
	public extern static final FRONT_AND_BACK:Int;
	@:native('GL_NO_ERROR')
	public extern static final NO_ERROR:Int;
	@:native('GL_INVALID_ENUM')
	public extern static final INVALID_ENUM:Int;
	@:native('GL_INVALID_VALUE')
	public extern static final INVALID_VALUE:Int;
	@:native('GL_INVALID_OPERATION')
	public extern static final INVALID_OPERATION:Int;
	@:native('GL_OUT_OF_MEMORY')
	public extern static final OUT_OF_MEMORY:Int;
	@:native('GL_CW')
	public extern static final CW:Int;
	@:native('GL_CCW')
	public extern static final CCW:Int;
	@:native('GL_POINT_SIZE')
	public extern static final POINT_SIZE:Int;
	@:native('GL_POINT_SIZE_RANGE')
	public extern static final POINT_SIZE_RANGE:Int;
	@:native('GL_POINT_SIZE_GRANULARITY')
	public extern static final POINT_SIZE_GRANULARITY:Int;
	@:native('GL_LINE_SMOOTH')
	public extern static final LINE_SMOOTH:Int;
	@:native('GL_LINE_WIDTH')
	public extern static final LINE_WIDTH:Int;
	@:native('GL_LINE_WIDTH_RANGE')
	public extern static final LINE_WIDTH_RANGE:Int;
	@:native('GL_LINE_WIDTH_GRANULARITY')
	public extern static final LINE_WIDTH_GRANULARITY:Int;
	@:native('GL_POLYGON_MODE')
	public extern static final POLYGON_MODE:Int;
	@:native('GL_POLYGON_SMOOTH')
	public extern static final POLYGON_SMOOTH:Int;
	@:native('GL_CULL_FACE')
	public extern static final CULL_FACE:Int;
	@:native('GL_CULL_FACE_MODE')
	public extern static final CULL_FACE_MODE:Int;
	@:native('GL_FRONT_FACE')
	public extern static final FRONT_FACE:Int;
	@:native('GL_DEPTH_RANGE')
	public extern static final DEPTH_RANGE:Int;
	@:native('GL_DEPTH_TEST')
	public extern static final DEPTH_TEST:Int;
	@:native('GL_DEPTH_WRITEMASK')
	public extern static final DEPTH_WRITEMASK:Int;
	@:native('GL_DEPTH_CLEAR_VALUE')
	public extern static final DEPTH_CLEAR_VALUE:Int;
	@:native('GL_DEPTH_FUNC')
	public extern static final DEPTH_FUNC:Int;
	@:native('GL_STENCIL_TEST')
	public extern static final STENCIL_TEST:Int;
	@:native('GL_STENCIL_CLEAR_VALUE')
	public extern static final STENCIL_CLEAR_VALUE:Int;
	@:native('GL_STENCIL_FUNC')
	public extern static final STENCIL_FUNC:Int;
	@:native('GL_STENCIL_VALUE_MASK')
	public extern static final STENCIL_VALUE_MASK:Int;
	@:native('GL_STENCIL_FAIL')
	public extern static final STENCIL_FAIL:Int;
	@:native('GL_STENCIL_PASS_DEPTH_FAIL')
	public extern static final STENCIL_PASS_DEPTH_FAIL:Int;
	@:native('GL_STENCIL_PASS_DEPTH_PASS')
	public extern static final STENCIL_PASS_DEPTH_PASS:Int;
	@:native('GL_STENCIL_REF')
	public extern static final STENCIL_REF:Int;
	@:native('GL_STENCIL_WRITEMASK')
	public extern static final STENCIL_WRITEMASK:Int;
	@:native('GL_VIEWPORT')
	public extern static final VIEWPORT:Int;
	@:native('GL_DITHER')
	public extern static final DITHER:Int;
	@:native('GL_BLEND_DST')
	public extern static final BLEND_DST:Int;
	@:native('GL_BLEND_SRC')
	public extern static final BLEND_SRC:Int;
	@:native('GL_BLEND')
	public extern static final BLEND:Int;
	@:native('GL_LOGIC_OP_MODE')
	public extern static final LOGIC_OP_MODE:Int;
	@:native('GL_DRAW_BUFFER')
	public extern static final DRAW_BUFFER:Int;
	@:native('GL_READ_BUFFER')
	public extern static final READ_BUFFER:Int;
	@:native('GL_SCISSOR_BOX')
	public extern static final SCISSOR_BOX:Int;
	@:native('GL_SCISSOR_TEST')
	public extern static final SCISSOR_TEST:Int;
	@:native('GL_COLOR_CLEAR_VALUE')
	public extern static final COLOR_CLEAR_VALUE:Int;
	@:native('GL_COLOR_WRITEMASK')
	public extern static final COLOR_WRITEMASK:Int;
	@:native('GL_DOUBLEBUFFER')
	public extern static final DOUBLEBUFFER:Int;
	@:native('GL_STEREO')
	public extern static final STEREO:Int;
	@:native('GL_LINE_SMOOTH_HINT')
	public extern static final LINE_SMOOTH_HINT:Int;
	@:native('GL_POLYGON_SMOOTH_HINT')
	public extern static final POLYGON_SMOOTH_HINT:Int;
	@:native('GL_UNPACK_SWAP_BYTES')
	public extern static final UNPACK_SWAP_BYTES:Int;
	@:native('GL_UNPACK_LSB_FIRST')
	public extern static final UNPACK_LSB_FIRST:Int;
	@:native('GL_UNPACK_ROW_LENGTH')
	public extern static final UNPACK_ROW_LENGTH:Int;
	@:native('GL_UNPACK_SKIP_ROWS')
	public extern static final UNPACK_SKIP_ROWS:Int;
	@:native('GL_UNPACK_SKIP_PIXELS')
	public extern static final UNPACK_SKIP_PIXELS:Int;
	@:native('GL_UNPACK_ALIGNMENT')
	public extern static final UNPACK_ALIGNMENT:Int;
	@:native('GL_PACK_SWAP_BYTES')
	public extern static final PACK_SWAP_BYTES:Int;
	@:native('GL_PACK_LSB_FIRST')
	public extern static final PACK_LSB_FIRST:Int;
	@:native('GL_PACK_ROW_LENGTH')
	public extern static final PACK_ROW_LENGTH:Int;
	@:native('GL_PACK_SKIP_ROWS')
	public extern static final PACK_SKIP_ROWS:Int;
	@:native('GL_PACK_SKIP_PIXELS')
	public extern static final PACK_SKIP_PIXELS:Int;
	@:native('GL_PACK_ALIGNMENT')
	public extern static final PACK_ALIGNMENT:Int;
	@:native('GL_MAX_TEXTURE_SIZE')
	public extern static final MAX_TEXTURE_SIZE:Int;
	@:native('GL_MAX_VIEWPORT_DIMS')
	public extern static final MAX_VIEWPORT_DIMS:Int;
	@:native('GL_SUBPIXEL_BITS')
	public extern static final SUBPIXEL_BITS:Int;
	@:native('GL_TEXTURE_1D')
	public extern static final TEXTURE_1D:Int;
	@:native('GL_TEXTURE_2D')
	public extern static final TEXTURE_2D:Int;
	@:native('GL_TEXTURE_WIDTH')
	public extern static final TEXTURE_WIDTH:Int;
	@:native('GL_TEXTURE_HEIGHT')
	public extern static final TEXTURE_HEIGHT:Int;
	@:native('GL_TEXTURE_BORDER_COLOR')
	public extern static final TEXTURE_BORDER_COLOR:Int;
	@:native('GL_DONT_CARE')
	public extern static final DONT_CARE:Int;
	@:native('GL_FASTEST')
	public extern static final FASTEST:Int;
	@:native('GL_NICEST')
	public extern static final NICEST:Int;
	@:native('GL_BYTE')
	public extern static final BYTE:Int;
	@:native('GL_UNSIGNED_BYTE')
	public extern static final UNSIGNED_BYTE:Int;
	@:native('GL_SHORT')
	public extern static final SHORT:Int;
	@:native('GL_UNSIGNED_SHORT')
	public extern static final UNSIGNED_SHORT:Int;
	@:native('GL_INT')
	public extern static final INT:Int;
	@:native('GL_UNSIGNED_INT')
	public extern static final UNSIGNED_INT:Int;
	@:native('GL_FLOAT')
	public extern static final FLOAT:Int;
	@:native('GL_CLEAR')
	public extern static final CLEAR:Int;
	@:native('GL_AND')
	public extern static final AND:Int;
	@:native('GL_AND_REVERSE')
	public extern static final AND_REVERSE:Int;
	@:native('GL_COPY')
	public extern static final COPY:Int;
	@:native('GL_AND_INVERTED')
	public extern static final AND_INVERTED:Int;
	@:native('GL_NOOP')
	public extern static final NOOP:Int;
	@:native('GL_XOR')
	public extern static final XOR:Int;
	@:native('GL_OR')
	public extern static final OR:Int;
	@:native('GL_NOR')
	public extern static final NOR:Int;
	@:native('GL_EQUIV')
	public extern static final EQUIV:Int;
	@:native('GL_INVERT')
	public extern static final INVERT:Int;
	@:native('GL_OR_REVERSE')
	public extern static final OR_REVERSE:Int;
	@:native('GL_COPY_INVERTED')
	public extern static final COPY_INVERTED:Int;
	@:native('GL_OR_INVERTED')
	public extern static final OR_INVERTED:Int;
	@:native('GL_NAND')
	public extern static final NAND:Int;
	@:native('GL_SET')
	public extern static final SET:Int;
	@:native('GL_TEXTURE')
	public extern static final TEXTURE:Int;
	@:native('GL_COLOR')
	public extern static final COLOR:Int;
	@:native('GL_DEPTH')
	public extern static final DEPTH:Int;
	@:native('GL_STENCIL')
	public extern static final STENCIL:Int;
	@:native('GL_STENCIL_INDEX')
	public extern static final STENCIL_INDEX:Int;
	@:native('GL_DEPTH_COMPONENT')
	public extern static final DEPTH_COMPONENT:Int;
	@:native('GL_RED')
	public extern static final RED:Int;
	@:native('GL_GREEN')
	public extern static final GREEN:Int;
	@:native('GL_BLUE')
	public extern static final BLUE:Int;
	@:native('GL_ALPHA')
	public extern static final ALPHA:Int;
	@:native('GL_RGB')
	public extern static final RGB:Int;
	@:native('GL_RGBA')
	public extern static final RGBA:Int;
	@:native('GL_POINT')
	public extern static final POINT:Int;
	@:native('GL_LINE')
	public extern static final LINE:Int;
	@:native('GL_FILL')
	public extern static final FILL:Int;
	@:native('GL_KEEP')
	public extern static final KEEP:Int;
	@:native('GL_REPLACE')
	public extern static final REPLACE:Int;
	@:native('GL_INCR')
	public extern static final INCR:Int;
	@:native('GL_DECR')
	public extern static final DECR:Int;
	@:native('GL_VENDOR')
	public extern static final VENDOR:Int;
	@:native('GL_RENDERER')
	public extern static final RENDERER:Int;
	@:native('GL_VERSION')
	public extern static final VERSION:Int;
	@:native('GL_EXTENSIONS')
	public extern static final EXTENSIONS:Int;
	@:native('GL_NEAREST')
	public extern static final NEAREST:Int;
	@:native('GL_LINEAR')
	public extern static final LINEAR:Int;
	@:native('GL_NEAREST_MIPMAP_NEAREST')
	public extern static final NEAREST_MIPMAP_NEAREST:Int;
	@:native('GL_LINEAR_MIPMAP_NEAREST')
	public extern static final LINEAR_MIPMAP_NEAREST:Int;
	@:native('GL_NEAREST_MIPMAP_LINEAR')
	public extern static final NEAREST_MIPMAP_LINEAR:Int;
	@:native('GL_LINEAR_MIPMAP_LINEAR')
	public extern static final LINEAR_MIPMAP_LINEAR:Int;
	@:native('GL_TEXTURE_MAG_FILTER')
	public extern static final TEXTURE_MAG_FILTER:Int;
	@:native('GL_TEXTURE_MIN_FILTER')
	public extern static final TEXTURE_MIN_FILTER:Int;
	@:native('GL_TEXTURE_WRAP_S')
	public extern static final TEXTURE_WRAP_S:Int;
	@:native('GL_TEXTURE_WRAP_T')
	public extern static final TEXTURE_WRAP_T:Int;
	@:native('GL_REPEAT')
	public extern static final REPEAT:Int;
	@:native('GL_COLOR_LOGIC_OP')
	public extern static final COLOR_LOGIC_OP:Int;
	@:native('GL_POLYGON_OFFSET_UNITS')
	public extern static final POLYGON_OFFSET_UNITS:Int;
	@:native('GL_POLYGON_OFFSET_POINT')
	public extern static final POLYGON_OFFSET_POINT:Int;
	@:native('GL_POLYGON_OFFSET_LINE')
	public extern static final POLYGON_OFFSET_LINE:Int;
	@:native('GL_POLYGON_OFFSET_FILL')
	public extern static final POLYGON_OFFSET_FILL:Int;
	@:native('GL_POLYGON_OFFSET_FACTOR')
	public extern static final POLYGON_OFFSET_FACTOR:Int;
	@:native('GL_TEXTURE_BINDING_1D')
	public extern static final TEXTURE_BINDING_1D:Int;
	@:native('GL_TEXTURE_BINDING_2D')
	public extern static final TEXTURE_BINDING_2D:Int;
	@:native('GL_TEXTURE_INTERNAL_FORMAT')
	public extern static final TEXTURE_INTERNAL_FORMAT:Int;
	@:native('GL_TEXTURE_RED_SIZE')
	public extern static final TEXTURE_RED_SIZE:Int;
	@:native('GL_TEXTURE_GREEN_SIZE')
	public extern static final TEXTURE_GREEN_SIZE:Int;
	@:native('GL_TEXTURE_BLUE_SIZE')
	public extern static final TEXTURE_BLUE_SIZE:Int;
	@:native('GL_TEXTURE_ALPHA_SIZE')
	public extern static final TEXTURE_ALPHA_SIZE:Int;
	@:native('GL_DOUBLE')
	public extern static final DOUBLE:Int;
	@:native('GL_PROXY_TEXTURE_1D')
	public extern static final PROXY_TEXTURE_1D:Int;
	@:native('GL_PROXY_TEXTURE_2D')
	public extern static final PROXY_TEXTURE_2D:Int;
	@:native('GL_R3_G3_B2')
	public extern static final R3_G3_B2:Int;
	@:native('GL_RGB4')
	public extern static final RGB4:Int;
	@:native('GL_RGB5')
	public extern static final RGB5:Int;
	@:native('GL_RGB8')
	public extern static final RGB8:Int;
	@:native('GL_RGB10')
	public extern static final RGB10:Int;
	@:native('GL_RGB12')
	public extern static final RGB12:Int;
	@:native('GL_RGB16')
	public extern static final RGB16:Int;
	@:native('GL_RGBA2')
	public extern static final RGBA2:Int;
	@:native('GL_RGBA4')
	public extern static final RGBA4:Int;
	@:native('GL_RGB5_A1')
	public extern static final RGB5_A1:Int;
	@:native('GL_RGBA8')
	public extern static final RGBA8:Int;
	@:native('GL_RGB10_A2')
	public extern static final RGB10_A2:Int;
	@:native('GL_RGBA12')
	public extern static final RGBA12:Int;
	@:native('GL_RGBA16')
	public extern static final RGBA16:Int;
	@:native('GL_UNSIGNED_BYTE_3_3_2')
	public extern static final UNSIGNED_BYTE_3_3_2:Int;
	@:native('GL_UNSIGNED_SHORT_4_4_4_4')
	public extern static final UNSIGNED_SHORT_4_4_4_4:Int;
	@:native('GL_UNSIGNED_SHORT_5_5_5_1')
	public extern static final UNSIGNED_SHORT_5_5_5_1:Int;
	@:native('GL_UNSIGNED_INT_8_8_8_8')
	public extern static final UNSIGNED_INT_8_8_8_8:Int;
	@:native('GL_UNSIGNED_INT_10_10_10_2')
	public extern static final UNSIGNED_INT_10_10_10_2:Int;
	@:native('GL_TEXTURE_BINDING_3D')
	public extern static final TEXTURE_BINDING_3D:Int;
	@:native('GL_PACK_SKIP_IMAGES')
	public extern static final PACK_SKIP_IMAGES:Int;
	@:native('GL_PACK_IMAGE_HEIGHT')
	public extern static final PACK_IMAGE_HEIGHT:Int;
	@:native('GL_UNPACK_SKIP_IMAGES')
	public extern static final UNPACK_SKIP_IMAGES:Int;
	@:native('GL_UNPACK_IMAGE_HEIGHT')
	public extern static final UNPACK_IMAGE_HEIGHT:Int;
	@:native('GL_TEXTURE_3D')
	public extern static final TEXTURE_3D:Int;
	@:native('GL_PROXY_TEXTURE_3D')
	public extern static final PROXY_TEXTURE_3D:Int;
	@:native('GL_TEXTURE_DEPTH')
	public extern static final TEXTURE_DEPTH:Int;
	@:native('GL_TEXTURE_WRAP_R')
	public extern static final TEXTURE_WRAP_R:Int;
	@:native('GL_MAX_3D_TEXTURE_SIZE')
	public extern static final MAX_3D_TEXTURE_SIZE:Int;
	@:native('GL_UNSIGNED_BYTE_2_3_3_REV')
	public extern static final UNSIGNED_BYTE_2_3_3_REV:Int;
	@:native('GL_UNSIGNED_SHORT_5_6_5')
	public extern static final UNSIGNED_SHORT_5_6_5:Int;
	@:native('GL_UNSIGNED_SHORT_5_6_5_REV')
	public extern static final UNSIGNED_SHORT_5_6_5_REV:Int;
	@:native('GL_UNSIGNED_SHORT_4_4_4_4_REV')
	public extern static final UNSIGNED_SHORT_4_4_4_4_REV:Int;
	@:native('GL_UNSIGNED_SHORT_1_5_5_5_REV')
	public extern static final UNSIGNED_SHORT_1_5_5_5_REV:Int;
	@:native('GL_UNSIGNED_INT_8_8_8_8_REV')
	public extern static final UNSIGNED_INT_8_8_8_8_REV:Int;
	@:native('GL_UNSIGNED_INT_2_10_10_10_REV')
	public extern static final UNSIGNED_INT_2_10_10_10_REV:Int;
	@:native('GL_BGR')
	public extern static final BGR:Int;
	@:native('GL_BGRA')
	public extern static final BGRA:Int;
	@:native('GL_MAX_ELEMENTS_VERTICES')
	public extern static final MAX_ELEMENTS_VERTICES:Int;
	@:native('GL_MAX_ELEMENTS_INDICES')
	public extern static final MAX_ELEMENTS_INDICES:Int;
	@:native('GL_CLAMP_TO_EDGE')
	public extern static final CLAMP_TO_EDGE:Int;
	@:native('GL_TEXTURE_MIN_LOD')
	public extern static final TEXTURE_MIN_LOD:Int;
	@:native('GL_TEXTURE_MAX_LOD')
	public extern static final TEXTURE_MAX_LOD:Int;
	@:native('GL_TEXTURE_BASE_LEVEL')
	public extern static final TEXTURE_BASE_LEVEL:Int;
	@:native('GL_TEXTURE_MAX_LEVEL')
	public extern static final TEXTURE_MAX_LEVEL:Int;
	@:native('GL_SMOOTH_POINT_SIZE_RANGE')
	public extern static final SMOOTH_POINT_SIZE_RANGE:Int;
	@:native('GL_SMOOTH_POINT_SIZE_GRANULARITY')
	public extern static final SMOOTH_POINT_SIZE_GRANULARITY:Int;
	@:native('GL_SMOOTH_LINE_WIDTH_RANGE')
	public extern static final SMOOTH_LINE_WIDTH_RANGE:Int;
	@:native('GL_SMOOTH_LINE_WIDTH_GRANULARITY')
	public extern static final SMOOTH_LINE_WIDTH_GRANULARITY:Int;
	@:native('GL_ALIASED_LINE_WIDTH_RANGE')
	public extern static final ALIASED_LINE_WIDTH_RANGE:Int;
	@:native('GL_TEXTURE0')
	public extern static final TEXTURE0:Int;
	@:native('GL_TEXTURE1')
	public extern static final TEXTURE1:Int;
	@:native('GL_TEXTURE2')
	public extern static final TEXTURE2:Int;
	@:native('GL_TEXTURE3')
	public extern static final TEXTURE3:Int;
	@:native('GL_TEXTURE4')
	public extern static final TEXTURE4:Int;
	@:native('GL_TEXTURE5')
	public extern static final TEXTURE5:Int;
	@:native('GL_TEXTURE6')
	public extern static final TEXTURE6:Int;
	@:native('GL_TEXTURE7')
	public extern static final TEXTURE7:Int;
	@:native('GL_TEXTURE8')
	public extern static final TEXTURE8:Int;
	@:native('GL_TEXTURE9')
	public extern static final TEXTURE9:Int;
	@:native('GL_TEXTURE10')
	public extern static final TEXTURE10:Int;
	@:native('GL_TEXTURE11')
	public extern static final TEXTURE11:Int;
	@:native('GL_TEXTURE12')
	public extern static final TEXTURE12:Int;
	@:native('GL_TEXTURE13')
	public extern static final TEXTURE13:Int;
	@:native('GL_TEXTURE14')
	public extern static final TEXTURE14:Int;
	@:native('GL_TEXTURE15')
	public extern static final TEXTURE15:Int;
	@:native('GL_TEXTURE16')
	public extern static final TEXTURE16:Int;
	@:native('GL_TEXTURE17')
	public extern static final TEXTURE17:Int;
	@:native('GL_TEXTURE18')
	public extern static final TEXTURE18:Int;
	@:native('GL_TEXTURE19')
	public extern static final TEXTURE19:Int;
	@:native('GL_TEXTURE20')
	public extern static final TEXTURE20:Int;
	@:native('GL_TEXTURE21')
	public extern static final TEXTURE21:Int;
	@:native('GL_TEXTURE22')
	public extern static final TEXTURE22:Int;
	@:native('GL_TEXTURE23')
	public extern static final TEXTURE23:Int;
	@:native('GL_TEXTURE24')
	public extern static final TEXTURE24:Int;
	@:native('GL_TEXTURE25')
	public extern static final TEXTURE25:Int;
	@:native('GL_TEXTURE26')
	public extern static final TEXTURE26:Int;
	@:native('GL_TEXTURE27')
	public extern static final TEXTURE27:Int;
	@:native('GL_TEXTURE28')
	public extern static final TEXTURE28:Int;
	@:native('GL_TEXTURE29')
	public extern static final TEXTURE29:Int;
	@:native('GL_TEXTURE30')
	public extern static final TEXTURE30:Int;
	@:native('GL_TEXTURE31')
	public extern static final TEXTURE31:Int;
	@:native('GL_ACTIVE_TEXTURE')
	public extern static final ACTIVE_TEXTURE:Int;
	@:native('GL_MULTISAMPLE')
	public extern static final MULTISAMPLE:Int;
	@:native('GL_SAMPLE_ALPHA_TO_COVERAGE')
	public extern static final SAMPLE_ALPHA_TO_COVERAGE:Int;
	@:native('GL_SAMPLE_ALPHA_TO_ONE')
	public extern static final SAMPLE_ALPHA_TO_ONE:Int;
	@:native('GL_SAMPLE_COVERAGE')
	public extern static final SAMPLE_COVERAGE:Int;
	@:native('GL_SAMPLE_BUFFERS')
	public extern static final SAMPLE_BUFFERS:Int;
	@:native('GL_SAMPLES')
	public extern static final SAMPLES:Int;
	@:native('GL_SAMPLE_COVERAGE_VALUE')
	public extern static final SAMPLE_COVERAGE_VALUE:Int;
	@:native('GL_SAMPLE_COVERAGE_INVERT')
	public extern static final SAMPLE_COVERAGE_INVERT:Int;
	@:native('GL_TEXTURE_CUBE_MAP')
	public extern static final TEXTURE_CUBE_MAP:Int;
	@:native('GL_TEXTURE_BINDING_CUBE_MAP')
	public extern static final TEXTURE_BINDING_CUBE_MAP:Int;
	@:native('GL_TEXTURE_CUBE_MAP_POSITIVE_X')
	public extern static final TEXTURE_CUBE_MAP_POSITIVE_X:Int;
	@:native('GL_TEXTURE_CUBE_MAP_NEGATIVE_X')
	public extern static final TEXTURE_CUBE_MAP_NEGATIVE_X:Int;
	@:native('GL_TEXTURE_CUBE_MAP_POSITIVE_Y')
	public extern static final TEXTURE_CUBE_MAP_POSITIVE_Y:Int;
	@:native('GL_TEXTURE_CUBE_MAP_NEGATIVE_Y')
	public extern static final TEXTURE_CUBE_MAP_NEGATIVE_Y:Int;
	@:native('GL_TEXTURE_CUBE_MAP_POSITIVE_Z')
	public extern static final TEXTURE_CUBE_MAP_POSITIVE_Z:Int;
	@:native('GL_TEXTURE_CUBE_MAP_NEGATIVE_Z')
	public extern static final TEXTURE_CUBE_MAP_NEGATIVE_Z:Int;
	@:native('GL_PROXY_TEXTURE_CUBE_MAP')
	public extern static final PROXY_TEXTURE_CUBE_MAP:Int;
	@:native('GL_MAX_CUBE_MAP_TEXTURE_SIZE')
	public extern static final MAX_CUBE_MAP_TEXTURE_SIZE:Int;
	@:native('GL_COMPRESSED_RGB')
	public extern static final COMPRESSED_RGB:Int;
	@:native('GL_COMPRESSED_RGBA')
	public extern static final COMPRESSED_RGBA:Int;
	@:native('GL_TEXTURE_COMPRESSION_HINT')
	public extern static final TEXTURE_COMPRESSION_HINT:Int;
	@:native('GL_TEXTURE_COMPRESSED_IMAGE_SIZE')
	public extern static final TEXTURE_COMPRESSED_IMAGE_SIZE:Int;
	@:native('GL_TEXTURE_COMPRESSED')
	public extern static final TEXTURE_COMPRESSED:Int;
	@:native('GL_NUM_COMPRESSED_TEXTURE_FORMATS')
	public extern static final NUM_COMPRESSED_TEXTURE_FORMATS:Int;
	@:native('GL_COMPRESSED_TEXTURE_FORMATS')
	public extern static final COMPRESSED_TEXTURE_FORMATS:Int;
	@:native('GL_CLAMP_TO_BORDER')
	public extern static final CLAMP_TO_BORDER:Int;
	@:native('GL_BLEND_DST_RGB')
	public extern static final BLEND_DST_RGB:Int;
	@:native('GL_BLEND_SRC_RGB')
	public extern static final BLEND_SRC_RGB:Int;
	@:native('GL_BLEND_DST_ALPHA')
	public extern static final BLEND_DST_ALPHA:Int;
	@:native('GL_BLEND_SRC_ALPHA')
	public extern static final BLEND_SRC_ALPHA:Int;
	@:native('GL_POINT_FADE_THRESHOLD_SIZE')
	public extern static final POINT_FADE_THRESHOLD_SIZE:Int;
	@:native('GL_DEPTH_COMPONENT16')
	public extern static final DEPTH_COMPONENT16:Int;
	@:native('GL_DEPTH_COMPONENT24')
	public extern static final DEPTH_COMPONENT24:Int;
	@:native('GL_DEPTH_COMPONENT32')
	public extern static final DEPTH_COMPONENT32:Int;
	@:native('GL_MIRRORED_REPEAT')
	public extern static final MIRRORED_REPEAT:Int;
	@:native('GL_MAX_TEXTURE_LOD_BIAS')
	public extern static final MAX_TEXTURE_LOD_BIAS:Int;
	@:native('GL_TEXTURE_LOD_BIAS')
	public extern static final TEXTURE_LOD_BIAS:Int;
	@:native('GL_INCR_WRAP')
	public extern static final INCR_WRAP:Int;
	@:native('GL_DECR_WRAP')
	public extern static final DECR_WRAP:Int;
	@:native('GL_TEXTURE_DEPTH_SIZE')
	public extern static final TEXTURE_DEPTH_SIZE:Int;
	@:native('GL_TEXTURE_COMPARE_MODE')
	public extern static final TEXTURE_COMPARE_MODE:Int;
	@:native('GL_TEXTURE_COMPARE_FUNC')
	public extern static final TEXTURE_COMPARE_FUNC:Int;
	@:native('GL_BLEND_COLOR')
	public extern static final BLEND_COLOR:Int;
	@:native('GL_BLEND_EQUATION')
	public extern static final BLEND_EQUATION:Int;
	@:native('GL_CONSTANT_COLOR')
	public extern static final CONSTANT_COLOR:Int;
	@:native('GL_ONE_MINUS_CONSTANT_COLOR')
	public extern static final ONE_MINUS_CONSTANT_COLOR:Int;
	@:native('GL_CONSTANT_ALPHA')
	public extern static final CONSTANT_ALPHA:Int;
	@:native('GL_ONE_MINUS_CONSTANT_ALPHA')
	public extern static final ONE_MINUS_CONSTANT_ALPHA:Int;
	@:native('GL_FUNC_ADD')
	public extern static final FUNC_ADD:Int;
	@:native('GL_FUNC_REVERSE_SUBTRACT')
	public extern static final FUNC_REVERSE_SUBTRACT:Int;
	@:native('GL_FUNC_SUBTRACT')
	public extern static final FUNC_SUBTRACT:Int;
	@:native('GL_MIN')
	public extern static final MIN:Int;
	@:native('GL_MAX')
	public extern static final MAX:Int;
	@:native('GL_BUFFER_SIZE')
	public extern static final BUFFER_SIZE:Int;
	@:native('GL_BUFFER_USAGE')
	public extern static final BUFFER_USAGE:Int;
	@:native('GL_QUERY_COUNTER_BITS')
	public extern static final QUERY_COUNTER_BITS:Int;
	@:native('GL_CURRENT_QUERY')
	public extern static final CURRENT_QUERY:Int;
	@:native('GL_QUERY_RESULT')
	public extern static final QUERY_RESULT:Int;
	@:native('GL_QUERY_RESULT_AVAILABLE')
	public extern static final QUERY_RESULT_AVAILABLE:Int;
	@:native('GL_ARRAY_BUFFER')
	public extern static final ARRAY_BUFFER:Int;
	@:native('GL_ELEMENT_ARRAY_BUFFER')
	public extern static final ELEMENT_ARRAY_BUFFER:Int;
	@:native('GL_ARRAY_BUFFER_BINDING')
	public extern static final ARRAY_BUFFER_BINDING:Int;
	@:native('GL_ELEMENT_ARRAY_BUFFER_BINDING')
	public extern static final ELEMENT_ARRAY_BUFFER_BINDING:Int;
	@:native('GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING')
	public extern static final VERTEX_ATTRIB_ARRAY_BUFFER_BINDING:Int;
	@:native('GL_READ_ONLY')
	public extern static final READ_ONLY:Int;
	@:native('GL_WRITE_ONLY')
	public extern static final WRITE_ONLY:Int;
	@:native('GL_READ_WRITE')
	public extern static final READ_WRITE:Int;
	@:native('GL_BUFFER_ACCESS')
	public extern static final BUFFER_ACCESS:Int;
	@:native('GL_BUFFER_MAPPED')
	public extern static final BUFFER_MAPPED:Int;
	@:native('GL_BUFFER_MAP_POINTER')
	public extern static final BUFFER_MAP_POINTER:Int;
	@:native('GL_STREAM_DRAW')
	public extern static final STREAM_DRAW:Int;
	@:native('GL_STREAM_READ')
	public extern static final STREAM_READ:Int;
	@:native('GL_STREAM_COPY')
	public extern static final STREAM_COPY:Int;
	@:native('GL_STATIC_DRAW')
	public extern static final STATIC_DRAW:Int;
	@:native('GL_STATIC_READ')
	public extern static final STATIC_READ:Int;
	@:native('GL_STATIC_COPY')
	public extern static final STATIC_COPY:Int;
	@:native('GL_DYNAMIC_DRAW')
	public extern static final DYNAMIC_DRAW:Int;
	@:native('GL_DYNAMIC_READ')
	public extern static final DYNAMIC_READ:Int;
	@:native('GL_DYNAMIC_COPY')
	public extern static final DYNAMIC_COPY:Int;
	@:native('GL_SAMPLES_PASSED')
	public extern static final SAMPLES_PASSED:Int;
	@:native('GL_SRC1_ALPHA')
	public extern static final SRC1_ALPHA:Int;
	@:native('GL_BLEND_EQUATION_RGB')
	public extern static final BLEND_EQUATION_RGB:Int;
	@:native('GL_VERTEX_ATTRIB_ARRAY_ENABLED')
	public extern static final VERTEX_ATTRIB_ARRAY_ENABLED:Int;
	@:native('GL_VERTEX_ATTRIB_ARRAY_SIZE')
	public extern static final VERTEX_ATTRIB_ARRAY_SIZE:Int;
	@:native('GL_VERTEX_ATTRIB_ARRAY_STRIDE')
	public extern static final VERTEX_ATTRIB_ARRAY_STRIDE:Int;
	@:native('GL_VERTEX_ATTRIB_ARRAY_TYPE')
	public extern static final VERTEX_ATTRIB_ARRAY_TYPE:Int;
	@:native('GL_CURRENT_VERTEX_ATTRIB')
	public extern static final CURRENT_VERTEX_ATTRIB:Int;
	@:native('GL_VERTEX_PROGRAM_POINT_SIZE')
	public extern static final VERTEX_PROGRAM_POINT_SIZE:Int;
	@:native('GL_VERTEX_ATTRIB_ARRAY_POINTER')
	public extern static final VERTEX_ATTRIB_ARRAY_POINTER:Int;
	@:native('GL_STENCIL_BACK_FUNC')
	public extern static final STENCIL_BACK_FUNC:Int;
	@:native('GL_STENCIL_BACK_FAIL')
	public extern static final STENCIL_BACK_FAIL:Int;
	@:native('GL_STENCIL_BACK_PASS_DEPTH_FAIL')
	public extern static final STENCIL_BACK_PASS_DEPTH_FAIL:Int;
	@:native('GL_STENCIL_BACK_PASS_DEPTH_PASS')
	public extern static final STENCIL_BACK_PASS_DEPTH_PASS:Int;
	@:native('GL_MAX_DRAW_BUFFERS')
	public extern static final MAX_DRAW_BUFFERS:Int;
	@:native('GL_DRAW_BUFFER0')
	public extern static final DRAW_BUFFER0:Int;
	@:native('GL_DRAW_BUFFER1')
	public extern static final DRAW_BUFFER1:Int;
	@:native('GL_DRAW_BUFFER2')
	public extern static final DRAW_BUFFER2:Int;
	@:native('GL_DRAW_BUFFER3')
	public extern static final DRAW_BUFFER3:Int;
	@:native('GL_DRAW_BUFFER4')
	public extern static final DRAW_BUFFER4:Int;
	@:native('GL_DRAW_BUFFER5')
	public extern static final DRAW_BUFFER5:Int;
	@:native('GL_DRAW_BUFFER6')
	public extern static final DRAW_BUFFER6:Int;
	@:native('GL_DRAW_BUFFER7')
	public extern static final DRAW_BUFFER7:Int;
	@:native('GL_DRAW_BUFFER8')
	public extern static final DRAW_BUFFER8:Int;
	@:native('GL_DRAW_BUFFER9')
	public extern static final DRAW_BUFFER9:Int;
	@:native('GL_DRAW_BUFFER10')
	public extern static final DRAW_BUFFER10:Int;
	@:native('GL_DRAW_BUFFER11')
	public extern static final DRAW_BUFFER11:Int;
	@:native('GL_DRAW_BUFFER12')
	public extern static final DRAW_BUFFER12:Int;
	@:native('GL_DRAW_BUFFER13')
	public extern static final DRAW_BUFFER13:Int;
	@:native('GL_DRAW_BUFFER14')
	public extern static final DRAW_BUFFER14:Int;
	@:native('GL_DRAW_BUFFER15')
	public extern static final DRAW_BUFFER15:Int;
	@:native('GL_BLEND_EQUATION_ALPHA')
	public extern static final BLEND_EQUATION_ALPHA:Int;
	@:native('GL_MAX_VERTEX_ATTRIBS')
	public extern static final MAX_VERTEX_ATTRIBS:Int;
	@:native('GL_VERTEX_ATTRIB_ARRAY_NORMALIZED')
	public extern static final VERTEX_ATTRIB_ARRAY_NORMALIZED:Int;
	@:native('GL_MAX_TEXTURE_IMAGE_UNITS')
	public extern static final MAX_TEXTURE_IMAGE_UNITS:Int;
	@:native('GL_FRAGMENT_SHADER')
	public extern static final FRAGMENT_SHADER:Int;
	@:native('GL_VERTEX_SHADER')
	public extern static final VERTEX_SHADER:Int;
	@:native('GL_MAX_FRAGMENT_UNIFORM_COMPONENTS')
	public extern static final MAX_FRAGMENT_UNIFORM_COMPONENTS:Int;
	@:native('GL_MAX_VERTEX_UNIFORM_COMPONENTS')
	public extern static final MAX_VERTEX_UNIFORM_COMPONENTS:Int;
	@:native('GL_MAX_VARYING_FLOATS')
	public extern static final MAX_VARYING_FLOATS:Int;
	@:native('GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS')
	public extern static final MAX_VERTEX_TEXTURE_IMAGE_UNITS:Int;
	@:native('GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS')
	public extern static final MAX_COMBINED_TEXTURE_IMAGE_UNITS:Int;
	@:native('GL_SHADER_TYPE')
	public extern static final SHADER_TYPE:Int;
	@:native('GL_FLOAT_VEC2')
	public extern static final FLOAT_VEC2:Int;
	@:native('GL_FLOAT_VEC3')
	public extern static final FLOAT_VEC3:Int;
	@:native('GL_FLOAT_VEC4')
	public extern static final FLOAT_VEC4:Int;
	@:native('GL_INT_VEC2')
	public extern static final INT_VEC2:Int;
	@:native('GL_INT_VEC3')
	public extern static final INT_VEC3:Int;
	@:native('GL_INT_VEC4')
	public extern static final INT_VEC4:Int;
	@:native('GL_BOOL')
	public extern static final BOOL:Int;
	@:native('GL_BOOL_VEC2')
	public extern static final BOOL_VEC2:Int;
	@:native('GL_BOOL_VEC3')
	public extern static final BOOL_VEC3:Int;
	@:native('GL_BOOL_VEC4')
	public extern static final BOOL_VEC4:Int;
	@:native('GL_FLOAT_MAT2')
	public extern static final FLOAT_MAT2:Int;
	@:native('GL_FLOAT_MAT3')
	public extern static final FLOAT_MAT3:Int;
	@:native('GL_FLOAT_MAT4')
	public extern static final FLOAT_MAT4:Int;
	@:native('GL_SAMPLER_1D')
	public extern static final SAMPLER_1D:Int;
	@:native('GL_SAMPLER_2D')
	public extern static final SAMPLER_2D:Int;
	@:native('GL_SAMPLER_3D')
	public extern static final SAMPLER_3D:Int;
	@:native('GL_SAMPLER_CUBE')
	public extern static final SAMPLER_CUBE:Int;
	@:native('GL_SAMPLER_1D_SHADOW')
	public extern static final SAMPLER_1D_SHADOW:Int;
	@:native('GL_SAMPLER_2D_SHADOW')
	public extern static final SAMPLER_2D_SHADOW:Int;
	@:native('GL_DELETE_STATUS')
	public extern static final DELETE_STATUS:Int;
	@:native('GL_COMPILE_STATUS')
	public extern static final COMPILE_STATUS:Int;
	@:native('GL_LINK_STATUS')
	public extern static final LINK_STATUS:Int;
	@:native('GL_VALIDATE_STATUS')
	public extern static final VALIDATE_STATUS:Int;
	@:native('GL_INFO_LOG_LENGTH')
	public extern static final INFO_LOG_LENGTH:Int;
	@:native('GL_ATTACHED_SHADERS')
	public extern static final ATTACHED_SHADERS:Int;
	@:native('GL_ACTIVE_UNIFORMS')
	public extern static final ACTIVE_UNIFORMS:Int;
	@:native('GL_ACTIVE_UNIFORM_MAX_LENGTH')
	public extern static final ACTIVE_UNIFORM_MAX_LENGTH:Int;
	@:native('GL_SHADER_SOURCE_LENGTH')
	public extern static final SHADER_SOURCE_LENGTH:Int;
	@:native('GL_ACTIVE_ATTRIBUTES')
	public extern static final ACTIVE_ATTRIBUTES:Int;
	@:native('GL_ACTIVE_ATTRIBUTE_MAX_LENGTH')
	public extern static final ACTIVE_ATTRIBUTE_MAX_LENGTH:Int;
	@:native('GL_FRAGMENT_SHADER_DERIVATIVE_HINT')
	public extern static final FRAGMENT_SHADER_DERIVATIVE_HINT:Int;
	@:native('GL_SHADING_LANGUAGE_VERSION')
	public extern static final SHADING_LANGUAGE_VERSION:Int;
	@:native('GL_CURRENT_PROGRAM')
	public extern static final CURRENT_PROGRAM:Int;
	@:native('GL_POINT_SPRITE_COORD_ORIGIN')
	public extern static final POINT_SPRITE_COORD_ORIGIN:Int;
	@:native('GL_LOWER_LEFT')
	public extern static final LOWER_LEFT:Int;
	@:native('GL_UPPER_LEFT')
	public extern static final UPPER_LEFT:Int;
	@:native('GL_STENCIL_BACK_REF')
	public extern static final STENCIL_BACK_REF:Int;
	@:native('GL_STENCIL_BACK_VALUE_MASK')
	public extern static final STENCIL_BACK_VALUE_MASK:Int;
	@:native('GL_STENCIL_BACK_WRITEMASK')
	public extern static final STENCIL_BACK_WRITEMASK:Int;
	@:native('GL_PIXEL_PACK_BUFFER')
	public extern static final PIXEL_PACK_BUFFER:Int;
	@:native('GL_PIXEL_UNPACK_BUFFER')
	public extern static final PIXEL_UNPACK_BUFFER:Int;
	@:native('GL_PIXEL_PACK_BUFFER_BINDING')
	public extern static final PIXEL_PACK_BUFFER_BINDING:Int;
	@:native('GL_PIXEL_UNPACK_BUFFER_BINDING')
	public extern static final PIXEL_UNPACK_BUFFER_BINDING:Int;
	@:native('GL_FLOAT_MAT2x3')
	public extern static final FLOAT_MAT2x3:Int;
	@:native('GL_FLOAT_MAT2x4')
	public extern static final FLOAT_MAT2x4:Int;
	@:native('GL_FLOAT_MAT3x2')
	public extern static final FLOAT_MAT3x2:Int;
	@:native('GL_FLOAT_MAT3x4')
	public extern static final FLOAT_MAT3x4:Int;
	@:native('GL_FLOAT_MAT4x2')
	public extern static final FLOAT_MAT4x2:Int;
	@:native('GL_FLOAT_MAT4x3')
	public extern static final FLOAT_MAT4x3:Int;
	@:native('GL_SRGB')
	public extern static final SRGB:Int;
	@:native('GL_SRGB8')
	public extern static final SRGB8:Int;
	@:native('GL_SRGB_ALPHA')
	public extern static final SRGB_ALPHA:Int;
	@:native('GL_SRGB8_ALPHA8')
	public extern static final SRGB8_ALPHA8:Int;
	@:native('GL_COMPRESSED_SRGB')
	public extern static final COMPRESSED_SRGB:Int;
	@:native('GL_COMPRESSED_SRGB_ALPHA')
	public extern static final COMPRESSED_SRGB_ALPHA:Int;
	@:native('GL_COMPARE_REF_TO_TEXTURE')
	public extern static final COMPARE_REF_TO_TEXTURE:Int;
	@:native('GL_CLIP_DISTANCE0')
	public extern static final CLIP_DISTANCE0:Int;
	@:native('GL_CLIP_DISTANCE1')
	public extern static final CLIP_DISTANCE1:Int;
	@:native('GL_CLIP_DISTANCE2')
	public extern static final CLIP_DISTANCE2:Int;
	@:native('GL_CLIP_DISTANCE3')
	public extern static final CLIP_DISTANCE3:Int;
	@:native('GL_CLIP_DISTANCE4')
	public extern static final CLIP_DISTANCE4:Int;
	@:native('GL_CLIP_DISTANCE5')
	public extern static final CLIP_DISTANCE5:Int;
	@:native('GL_CLIP_DISTANCE6')
	public extern static final CLIP_DISTANCE6:Int;
	@:native('GL_CLIP_DISTANCE7')
	public extern static final CLIP_DISTANCE7:Int;
	@:native('GL_MAX_CLIP_DISTANCES')
	public extern static final MAX_CLIP_DISTANCES:Int;
	@:native('GL_MAJOR_VERSION')
	public extern static final MAJOR_VERSION:Int;
	@:native('GL_MINOR_VERSION')
	public extern static final MINOR_VERSION:Int;
	@:native('GL_NUM_EXTENSIONS')
	public extern static final NUM_EXTENSIONS:Int;
	@:native('GL_CONTEXT_FLAGS')
	public extern static final CONTEXT_FLAGS:Int;
	@:native('GL_COMPRESSED_RED')
	public extern static final COMPRESSED_RED:Int;
	@:native('GL_COMPRESSED_RG')
	public extern static final COMPRESSED_RG:Int;
	@:native('GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT')
	public extern static final CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT:Int;
	@:native('GL_RGBA32F')
	public extern static final RGBA32F:Int;
	@:native('GL_RGB32F')
	public extern static final RGB32F:Int;
	@:native('GL_RGBA16F')
	public extern static final RGBA16F:Int;
	@:native('GL_RGB16F')
	public extern static final RGB16F:Int;
	@:native('GL_VERTEX_ATTRIB_ARRAY_INTEGER')
	public extern static final VERTEX_ATTRIB_ARRAY_INTEGER:Int;
	@:native('GL_MAX_ARRAY_TEXTURE_LAYERS')
	public extern static final MAX_ARRAY_TEXTURE_LAYERS:Int;
	@:native('GL_MIN_PROGRAM_TEXEL_OFFSET')
	public extern static final MIN_PROGRAM_TEXEL_OFFSET:Int;
	@:native('GL_MAX_PROGRAM_TEXEL_OFFSET')
	public extern static final MAX_PROGRAM_TEXEL_OFFSET:Int;
	@:native('GL_CLAMP_READ_COLOR')
	public extern static final CLAMP_READ_COLOR:Int;
	@:native('GL_FIXED_ONLY')
	public extern static final FIXED_ONLY:Int;
	@:native('GL_MAX_VARYING_COMPONENTS')
	public extern static final MAX_VARYING_COMPONENTS:Int;
	@:native('GL_TEXTURE_1D_ARRAY')
	public extern static final TEXTURE_1D_ARRAY:Int;
	@:native('GL_PROXY_TEXTURE_1D_ARRAY')
	public extern static final PROXY_TEXTURE_1D_ARRAY:Int;
	@:native('GL_TEXTURE_2D_ARRAY')
	public extern static final TEXTURE_2D_ARRAY:Int;
	@:native('GL_PROXY_TEXTURE_2D_ARRAY')
	public extern static final PROXY_TEXTURE_2D_ARRAY:Int;
	@:native('GL_TEXTURE_BINDING_1D_ARRAY')
	public extern static final TEXTURE_BINDING_1D_ARRAY:Int;
	@:native('GL_TEXTURE_BINDING_2D_ARRAY')
	public extern static final TEXTURE_BINDING_2D_ARRAY:Int;
	@:native('GL_R11F_G11F_B10F')
	public extern static final R11F_G11F_B10F:Int;
	@:native('GL_UNSIGNED_INT_10F_11F_11F_REV')
	public extern static final UNSIGNED_INT_10F_11F_11F_REV:Int;
	@:native('GL_RGB9_E5')
	public extern static final RGB9_E5:Int;
	@:native('GL_UNSIGNED_INT_5_9_9_9_REV')
	public extern static final UNSIGNED_INT_5_9_9_9_REV:Int;
	@:native('GL_TEXTURE_SHARED_SIZE')
	public extern static final TEXTURE_SHARED_SIZE:Int;
	@:native('GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH')
	public extern static final TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH:Int;
	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_MODE')
	public extern static final TRANSFORM_FEEDBACK_BUFFER_MODE:Int;
	@:native('GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS')
	public extern static final MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS:Int;
	@:native('GL_TRANSFORM_FEEDBACK_VARYINGS')
	public extern static final TRANSFORM_FEEDBACK_VARYINGS:Int;
	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_START')
	public extern static final TRANSFORM_FEEDBACK_BUFFER_START:Int;
	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_SIZE')
	public extern static final TRANSFORM_FEEDBACK_BUFFER_SIZE:Int;
	@:native('GL_PRIMITIVES_GENERATED')
	public extern static final PRIMITIVES_GENERATED:Int;
	@:native('GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN')
	public extern static final TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN:Int;
	@:native('GL_RASTERIZER_DISCARD')
	public extern static final RASTERIZER_DISCARD:Int;
	@:native('GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS')
	public extern static final MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS:Int;
	@:native('GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS')
	public extern static final MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS:Int;
	@:native('GL_INTERLEAVED_ATTRIBS')
	public extern static final INTERLEAVED_ATTRIBS:Int;
	@:native('GL_SEPARATE_ATTRIBS')
	public extern static final SEPARATE_ATTRIBS:Int;
	@:native('GL_TRANSFORM_FEEDBACK_BUFFER')
	public extern static final TRANSFORM_FEEDBACK_BUFFER:Int;
	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_BINDING')
	public extern static final TRANSFORM_FEEDBACK_BUFFER_BINDING:Int;
	@:native('GL_RGBA32UI')
	public extern static final RGBA32UI:Int;
	@:native('GL_RGB32UI')
	public extern static final RGB32UI:Int;
	@:native('GL_RGBA16UI')
	public extern static final RGBA16UI:Int;
	@:native('GL_RGB16UI')
	public extern static final RGB16UI:Int;
	@:native('GL_RGBA8UI')
	public extern static final RGBA8UI:Int;
	@:native('GL_RGB8UI')
	public extern static final RGB8UI:Int;
	@:native('GL_RGBA32I')
	public extern static final RGBA32I:Int;
	@:native('GL_RGB32I')
	public extern static final RGB32I:Int;
	@:native('GL_RGBA16I')
	public extern static final RGBA16I:Int;
	@:native('GL_RGB16I')
	public extern static final RGB16I:Int;
	@:native('GL_RGBA8I')
	public extern static final RGBA8I:Int;
	@:native('GL_RGB8I')
	public extern static final RGB8I:Int;
	@:native('GL_RED_INTEGER')
	public extern static final RED_INTEGER:Int;
	@:native('GL_GREEN_INTEGER')
	public extern static final GREEN_INTEGER:Int;
	@:native('GL_BLUE_INTEGER')
	public extern static final BLUE_INTEGER:Int;
	@:native('GL_RGB_INTEGER')
	public extern static final RGB_INTEGER:Int;
	@:native('GL_RGBA_INTEGER')
	public extern static final RGBA_INTEGER:Int;
	@:native('GL_BGR_INTEGER')
	public extern static final BGR_INTEGER:Int;
	@:native('GL_BGRA_INTEGER')
	public extern static final BGRA_INTEGER:Int;
	@:native('GL_SAMPLER_1D_ARRAY')
	public extern static final SAMPLER_1D_ARRAY:Int;
	@:native('GL_SAMPLER_2D_ARRAY')
	public extern static final SAMPLER_2D_ARRAY:Int;
	@:native('GL_SAMPLER_1D_ARRAY_SHADOW')
	public extern static final SAMPLER_1D_ARRAY_SHADOW:Int;
	@:native('GL_SAMPLER_2D_ARRAY_SHADOW')
	public extern static final SAMPLER_2D_ARRAY_SHADOW:Int;
	@:native('GL_SAMPLER_CUBE_SHADOW')
	public extern static final SAMPLER_CUBE_SHADOW:Int;
	@:native('GL_UNSIGNED_INT_VEC2')
	public extern static final UNSIGNED_INT_VEC2:Int;
	@:native('GL_UNSIGNED_INT_VEC3')
	public extern static final UNSIGNED_INT_VEC3:Int;
	@:native('GL_UNSIGNED_INT_VEC4')
	public extern static final UNSIGNED_INT_VEC4:Int;
	@:native('GL_INT_SAMPLER_1D')
	public extern static final INT_SAMPLER_1D:Int;
	@:native('GL_INT_SAMPLER_2D')
	public extern static final INT_SAMPLER_2D:Int;
	@:native('GL_INT_SAMPLER_3D')
	public extern static final INT_SAMPLER_3D:Int;
	@:native('GL_INT_SAMPLER_CUBE')
	public extern static final INT_SAMPLER_CUBE:Int;
	@:native('GL_INT_SAMPLER_1D_ARRAY')
	public extern static final INT_SAMPLER_1D_ARRAY:Int;
	@:native('GL_INT_SAMPLER_2D_ARRAY')
	public extern static final INT_SAMPLER_2D_ARRAY:Int;
	@:native('GL_UNSIGNED_INT_SAMPLER_1D')
	public extern static final UNSIGNED_INT_SAMPLER_1D:Int;
	@:native('GL_UNSIGNED_INT_SAMPLER_2D')
	public extern static final UNSIGNED_INT_SAMPLER_2D:Int;
	@:native('GL_UNSIGNED_INT_SAMPLER_3D')
	public extern static final UNSIGNED_INT_SAMPLER_3D:Int;
	@:native('GL_UNSIGNED_INT_SAMPLER_CUBE')
	public extern static final UNSIGNED_INT_SAMPLER_CUBE:Int;
	@:native('GL_UNSIGNED_INT_SAMPLER_1D_ARRAY')
	public extern static final UNSIGNED_INT_SAMPLER_1D_ARRAY:Int;
	@:native('GL_UNSIGNED_INT_SAMPLER_2D_ARRAY')
	public extern static final UNSIGNED_INT_SAMPLER_2D_ARRAY:Int;
	@:native('GL_QUERY_WAIT')
	public extern static final QUERY_WAIT:Int;
	@:native('GL_QUERY_NO_WAIT')
	public extern static final QUERY_NO_WAIT:Int;
	@:native('GL_QUERY_BY_REGION_WAIT')
	public extern static final QUERY_BY_REGION_WAIT:Int;
	@:native('GL_QUERY_BY_REGION_NO_WAIT')
	public extern static final QUERY_BY_REGION_NO_WAIT:Int;
	@:native('GL_BUFFER_ACCESS_FLAGS')
	public extern static final BUFFER_ACCESS_FLAGS:Int;
	@:native('GL_BUFFER_MAP_LENGTH')
	public extern static final BUFFER_MAP_LENGTH:Int;
	@:native('GL_BUFFER_MAP_OFFSET')
	public extern static final BUFFER_MAP_OFFSET:Int;
	@:native('GL_DEPTH_COMPONENT32F')
	public extern static final DEPTH_COMPONENT32F:Int;
	@:native('GL_DEPTH32F_STENCIL8')
	public extern static final DEPTH32F_STENCIL8:Int;
	@:native('GL_FLOAT_32_UNSIGNED_INT_24_8_REV')
	public extern static final FLOAT_32_UNSIGNED_INT_24_8_REV:Int;
	@:native('GL_INVALID_FRAMEBUFFER_OPERATION')
	public extern static final INVALID_FRAMEBUFFER_OPERATION:Int;
	@:native('GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING')
	public extern static final FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING:Int;
	@:native('GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE')
	public extern static final FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE:Int;
	@:native('GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE')
	public extern static final FRAMEBUFFER_ATTACHMENT_RED_SIZE:Int;
	@:native('GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE')
	public extern static final FRAMEBUFFER_ATTACHMENT_GREEN_SIZE:Int;
	@:native('GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE')
	public extern static final FRAMEBUFFER_ATTACHMENT_BLUE_SIZE:Int;
	@:native('GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE')
	public extern static final FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE:Int;
	@:native('GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE')
	public extern static final FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE:Int;
	@:native('GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE')
	public extern static final FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE:Int;
	@:native('GL_FRAMEBUFFER_DEFAULT')
	public extern static final FRAMEBUFFER_DEFAULT:Int;
	@:native('GL_FRAMEBUFFER_UNDEFINED')
	public extern static final FRAMEBUFFER_UNDEFINED:Int;
	@:native('GL_DEPTH_STENCIL_ATTACHMENT')
	public extern static final DEPTH_STENCIL_ATTACHMENT:Int;
	@:native('GL_MAX_RENDERBUFFER_SIZE')
	public extern static final MAX_RENDERBUFFER_SIZE:Int;
	@:native('GL_DEPTH_STENCIL')
	public extern static final DEPTH_STENCIL:Int;
	@:native('GL_UNSIGNED_INT_24_8')
	public extern static final UNSIGNED_INT_24_8:Int;
	@:native('GL_DEPTH24_STENCIL8')
	public extern static final DEPTH24_STENCIL8:Int;
	@:native('GL_TEXTURE_STENCIL_SIZE')
	public extern static final TEXTURE_STENCIL_SIZE:Int;
	@:native('GL_TEXTURE_RED_TYPE')
	public extern static final TEXTURE_RED_TYPE:Int;
	@:native('GL_TEXTURE_GREEN_TYPE')
	public extern static final TEXTURE_GREEN_TYPE:Int;
	@:native('GL_TEXTURE_BLUE_TYPE')
	public extern static final TEXTURE_BLUE_TYPE:Int;
	@:native('GL_TEXTURE_ALPHA_TYPE')
	public extern static final TEXTURE_ALPHA_TYPE:Int;
	@:native('GL_TEXTURE_DEPTH_TYPE')
	public extern static final TEXTURE_DEPTH_TYPE:Int;
	@:native('GL_UNSIGNED_NORMALIZED')
	public extern static final UNSIGNED_NORMALIZED:Int;
	@:native('GL_FRAMEBUFFER_BINDING')
	public extern static final FRAMEBUFFER_BINDING:Int;
	@:native('GL_DRAW_FRAMEBUFFER_BINDING')
	public extern static final DRAW_FRAMEBUFFER_BINDING:Int;
	@:native('GL_RENDERBUFFER_BINDING')
	public extern static final RENDERBUFFER_BINDING:Int;
	@:native('GL_READ_FRAMEBUFFER')
	public extern static final READ_FRAMEBUFFER:Int;
	@:native('GL_DRAW_FRAMEBUFFER')
	public extern static final DRAW_FRAMEBUFFER:Int;
	@:native('GL_READ_FRAMEBUFFER_BINDING')
	public extern static final READ_FRAMEBUFFER_BINDING:Int;
	@:native('GL_RENDERBUFFER_SAMPLES')
	public extern static final RENDERBUFFER_SAMPLES:Int;
	@:native('GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE')
	public extern static final FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE:Int;
	@:native('GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME')
	public extern static final FRAMEBUFFER_ATTACHMENT_OBJECT_NAME:Int;
	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL')
	public extern static final FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL:Int;
	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE')
	public extern static final FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE:Int;
	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER')
	public extern static final FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER:Int;
	@:native('GL_FRAMEBUFFER_COMPLETE')
	public extern static final FRAMEBUFFER_COMPLETE:Int;
	@:native('GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT')
	public extern static final FRAMEBUFFER_INCOMPLETE_ATTACHMENT:Int;
	@:native('GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT')
	public extern static final FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT:Int;
	@:native('GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER')
	public extern static final FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER:Int;
	@:native('GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER')
	public extern static final FRAMEBUFFER_INCOMPLETE_READ_BUFFER:Int;
	@:native('GL_FRAMEBUFFER_UNSUPPORTED')
	public extern static final FRAMEBUFFER_UNSUPPORTED:Int;
	@:native('GL_MAX_COLOR_ATTACHMENTS')
	public extern static final MAX_COLOR_ATTACHMENTS:Int;
	@:native('GL_COLOR_ATTACHMENT0')
	public extern static final COLOR_ATTACHMENT0:Int;
	@:native('GL_COLOR_ATTACHMENT1')
	public extern static final COLOR_ATTACHMENT1:Int;
	@:native('GL_COLOR_ATTACHMENT2')
	public extern static final COLOR_ATTACHMENT2:Int;
	@:native('GL_COLOR_ATTACHMENT3')
	public extern static final COLOR_ATTACHMENT3:Int;
	@:native('GL_COLOR_ATTACHMENT4')
	public extern static final COLOR_ATTACHMENT4:Int;
	@:native('GL_COLOR_ATTACHMENT5')
	public extern static final COLOR_ATTACHMENT5:Int;
	@:native('GL_COLOR_ATTACHMENT6')
	public extern static final COLOR_ATTACHMENT6:Int;
	@:native('GL_COLOR_ATTACHMENT7')
	public extern static final COLOR_ATTACHMENT7:Int;
	@:native('GL_COLOR_ATTACHMENT8')
	public extern static final COLOR_ATTACHMENT8:Int;
	@:native('GL_COLOR_ATTACHMENT9')
	public extern static final COLOR_ATTACHMENT9:Int;
	@:native('GL_COLOR_ATTACHMENT10')
	public extern static final COLOR_ATTACHMENT10:Int;
	@:native('GL_COLOR_ATTACHMENT11')
	public extern static final COLOR_ATTACHMENT11:Int;
	@:native('GL_COLOR_ATTACHMENT12')
	public extern static final COLOR_ATTACHMENT12:Int;
	@:native('GL_COLOR_ATTACHMENT13')
	public extern static final COLOR_ATTACHMENT13:Int;
	@:native('GL_COLOR_ATTACHMENT14')
	public extern static final COLOR_ATTACHMENT14:Int;
	@:native('GL_COLOR_ATTACHMENT15')
	public extern static final COLOR_ATTACHMENT15:Int;
	@:native('GL_COLOR_ATTACHMENT16')
	public extern static final COLOR_ATTACHMENT16:Int;
	@:native('GL_COLOR_ATTACHMENT17')
	public extern static final COLOR_ATTACHMENT17:Int;
	@:native('GL_COLOR_ATTACHMENT18')
	public extern static final COLOR_ATTACHMENT18:Int;
	@:native('GL_COLOR_ATTACHMENT19')
	public extern static final COLOR_ATTACHMENT19:Int;
	@:native('GL_COLOR_ATTACHMENT20')
	public extern static final COLOR_ATTACHMENT20:Int;
	@:native('GL_COLOR_ATTACHMENT21')
	public extern static final COLOR_ATTACHMENT21:Int;
	@:native('GL_COLOR_ATTACHMENT22')
	public extern static final COLOR_ATTACHMENT22:Int;
	@:native('GL_COLOR_ATTACHMENT23')
	public extern static final COLOR_ATTACHMENT23:Int;
	@:native('GL_COLOR_ATTACHMENT24')
	public extern static final COLOR_ATTACHMENT24:Int;
	@:native('GL_COLOR_ATTACHMENT25')
	public extern static final COLOR_ATTACHMENT25:Int;
	@:native('GL_COLOR_ATTACHMENT26')
	public extern static final COLOR_ATTACHMENT26:Int;
	@:native('GL_COLOR_ATTACHMENT27')
	public extern static final COLOR_ATTACHMENT27:Int;
	@:native('GL_COLOR_ATTACHMENT28')
	public extern static final COLOR_ATTACHMENT28:Int;
	@:native('GL_COLOR_ATTACHMENT29')
	public extern static final COLOR_ATTACHMENT29:Int;
	@:native('GL_COLOR_ATTACHMENT30')
	public extern static final COLOR_ATTACHMENT30:Int;
	@:native('GL_COLOR_ATTACHMENT31')
	public extern static final COLOR_ATTACHMENT31:Int;
	@:native('GL_DEPTH_ATTACHMENT')
	public extern static final DEPTH_ATTACHMENT:Int;
	@:native('GL_STENCIL_ATTACHMENT')
	public extern static final STENCIL_ATTACHMENT:Int;
	@:native('GL_FRAMEBUFFER')
	public extern static final FRAMEBUFFER:Int;
	@:native('GL_RENDERBUFFER')
	public extern static final RENDERBUFFER:Int;
	@:native('GL_RENDERBUFFER_WIDTH')
	public extern static final RENDERBUFFER_WIDTH:Int;
	@:native('GL_RENDERBUFFER_HEIGHT')
	public extern static final RENDERBUFFER_HEIGHT:Int;
	@:native('GL_RENDERBUFFER_INTERNAL_FORMAT')
	public extern static final RENDERBUFFER_INTERNAL_FORMAT:Int;
	@:native('GL_STENCIL_INDEX1')
	public extern static final STENCIL_INDEX1:Int;
	@:native('GL_STENCIL_INDEX4')
	public extern static final STENCIL_INDEX4:Int;
	@:native('GL_STENCIL_INDEX8')
	public extern static final STENCIL_INDEX8:Int;
	@:native('GL_STENCIL_INDEX16')
	public extern static final STENCIL_INDEX16:Int;
	@:native('GL_RENDERBUFFER_RED_SIZE')
	public extern static final RENDERBUFFER_RED_SIZE:Int;
	@:native('GL_RENDERBUFFER_GREEN_SIZE')
	public extern static final RENDERBUFFER_GREEN_SIZE:Int;
	@:native('GL_RENDERBUFFER_BLUE_SIZE')
	public extern static final RENDERBUFFER_BLUE_SIZE:Int;
	@:native('GL_RENDERBUFFER_ALPHA_SIZE')
	public extern static final RENDERBUFFER_ALPHA_SIZE:Int;
	@:native('GL_RENDERBUFFER_DEPTH_SIZE')
	public extern static final RENDERBUFFER_DEPTH_SIZE:Int;
	@:native('GL_RENDERBUFFER_STENCIL_SIZE')
	public extern static final RENDERBUFFER_STENCIL_SIZE:Int;
	@:native('GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE')
	public extern static final FRAMEBUFFER_INCOMPLETE_MULTISAMPLE:Int;
	@:native('GL_MAX_SAMPLES')
	public extern static final MAX_SAMPLES:Int;
	@:native('GL_FRAMEBUFFER_SRGB')
	public extern static final FRAMEBUFFER_SRGB:Int;
	@:native('GL_HALF_FLOAT')
	public extern static final HALF_FLOAT:Int;
	@:native('GL_MAP_READ_BIT')
	public extern static final MAP_READ_BIT:Int;
	@:native('GL_MAP_WRITE_BIT')
	public extern static final MAP_WRITE_BIT:Int;
	@:native('GL_MAP_INVALIDATE_RANGE_BIT')
	public extern static final MAP_INVALIDATE_RANGE_BIT:Int;
	@:native('GL_MAP_INVALIDATE_BUFFER_BIT')
	public extern static final MAP_INVALIDATE_BUFFER_BIT:Int;
	@:native('GL_MAP_FLUSH_EXPLICIT_BIT')
	public extern static final MAP_FLUSH_EXPLICIT_BIT:Int;
	@:native('GL_MAP_UNSYNCHRONIZED_BIT')
	public extern static final MAP_UNSYNCHRONIZED_BIT:Int;
	@:native('GL_COMPRESSED_RED_RGTC1')
	public extern static final COMPRESSED_RED_RGTC1:Int;
	@:native('GL_COMPRESSED_SIGNED_RED_RGTC1')
	public extern static final COMPRESSED_SIGNED_RED_RGTC1:Int;
	@:native('GL_COMPRESSED_RG_RGTC2')
	public extern static final COMPRESSED_RG_RGTC2:Int;
	@:native('GL_COMPRESSED_SIGNED_RG_RGTC2')
	public extern static final COMPRESSED_SIGNED_RG_RGTC2:Int;
	@:native('GL_RG')
	public extern static final RG:Int;
	@:native('GL_RG_INTEGER')
	public extern static final RG_INTEGER:Int;
	@:native('GL_R8')
	public extern static final R8:Int;
	@:native('GL_R16')
	public extern static final R16:Int;
	@:native('GL_RG8')
	public extern static final RG8:Int;
	@:native('GL_RG16')
	public extern static final RG16:Int;
	@:native('GL_R16F')
	public extern static final R16F:Int;
	@:native('GL_R32F')
	public extern static final R32F:Int;
	@:native('GL_RG16F')
	public extern static final RG16F:Int;
	@:native('GL_RG32F')
	public extern static final RG32F:Int;
	@:native('GL_R8I')
	public extern static final R8I:Int;
	@:native('GL_R8UI')
	public extern static final R8UI:Int;
	@:native('GL_R16I')
	public extern static final R16I:Int;
	@:native('GL_R16UI')
	public extern static final R16UI:Int;
	@:native('GL_R32I')
	public extern static final R32I:Int;
	@:native('GL_R32UI')
	public extern static final R32UI:Int;
	@:native('GL_RG8I')
	public extern static final RG8I:Int;
	@:native('GL_RG8UI')
	public extern static final RG8UI:Int;
	@:native('GL_RG16I')
	public extern static final RG16I:Int;
	@:native('GL_RG16UI')
	public extern static final RG16UI:Int;
	@:native('GL_RG32I')
	public extern static final RG32I:Int;
	@:native('GL_RG32UI')
	public extern static final RG32UI:Int;
	@:native('GL_VERTEX_ARRAY_BINDING')
	public extern static final VERTEX_ARRAY_BINDING:Int;
	@:native('GL_SAMPLER_2D_RECT')
	public extern static final SAMPLER_2D_RECT:Int;
	@:native('GL_SAMPLER_2D_RECT_SHADOW')
	public extern static final SAMPLER_2D_RECT_SHADOW:Int;
	@:native('GL_SAMPLER_BUFFER')
	public extern static final SAMPLER_BUFFER:Int;
	@:native('GL_INT_SAMPLER_2D_RECT')
	public extern static final INT_SAMPLER_2D_RECT:Int;
	@:native('GL_INT_SAMPLER_BUFFER')
	public extern static final INT_SAMPLER_BUFFER:Int;
	@:native('GL_UNSIGNED_INT_SAMPLER_2D_RECT')
	public extern static final UNSIGNED_INT_SAMPLER_2D_RECT:Int;
	@:native('GL_UNSIGNED_INT_SAMPLER_BUFFER')
	public extern static final UNSIGNED_INT_SAMPLER_BUFFER:Int;
	@:native('GL_TEXTURE_BUFFER')
	public extern static final TEXTURE_BUFFER:Int;
	@:native('GL_MAX_TEXTURE_BUFFER_SIZE')
	public extern static final MAX_TEXTURE_BUFFER_SIZE:Int;
	@:native('GL_TEXTURE_BINDING_BUFFER')
	public extern static final TEXTURE_BINDING_BUFFER:Int;
	@:native('GL_TEXTURE_BUFFER_DATA_STORE_BINDING')
	public extern static final TEXTURE_BUFFER_DATA_STORE_BINDING:Int;
	@:native('GL_TEXTURE_RECTANGLE')
	public extern static final TEXTURE_RECTANGLE:Int;
	@:native('GL_TEXTURE_BINDING_RECTANGLE')
	public extern static final TEXTURE_BINDING_RECTANGLE:Int;
	@:native('GL_PROXY_TEXTURE_RECTANGLE')
	public extern static final PROXY_TEXTURE_RECTANGLE:Int;
	@:native('GL_MAX_RECTANGLE_TEXTURE_SIZE')
	public extern static final MAX_RECTANGLE_TEXTURE_SIZE:Int;
	@:native('GL_R8_SNORM')
	public extern static final R8_SNORM:Int;
	@:native('GL_RG8_SNORM')
	public extern static final RG8_SNORM:Int;
	@:native('GL_RGB8_SNORM')
	public extern static final RGB8_SNORM:Int;
	@:native('GL_RGBA8_SNORM')
	public extern static final RGBA8_SNORM:Int;
	@:native('GL_R16_SNORM')
	public extern static final R16_SNORM:Int;
	@:native('GL_RG16_SNORM')
	public extern static final RG16_SNORM:Int;
	@:native('GL_RGB16_SNORM')
	public extern static final RGB16_SNORM:Int;
	@:native('GL_RGBA16_SNORM')
	public extern static final RGBA16_SNORM:Int;
	@:native('GL_SIGNED_NORMALIZED')
	public extern static final SIGNED_NORMALIZED:Int;
	@:native('GL_PRIMITIVE_RESTART')
	public extern static final PRIMITIVE_RESTART:Int;
	@:native('GL_PRIMITIVE_RESTART_INDEX')
	public extern static final PRIMITIVE_RESTART_INDEX:Int;
	@:native('GL_COPY_READ_BUFFER')
	public extern static final COPY_READ_BUFFER:Int;
	@:native('GL_COPY_WRITE_BUFFER')
	public extern static final COPY_WRITE_BUFFER:Int;
	@:native('GL_UNIFORM_BUFFER')
	public extern static final UNIFORM_BUFFER:Int;
	@:native('GL_UNIFORM_BUFFER_BINDING')
	public extern static final UNIFORM_BUFFER_BINDING:Int;
	@:native('GL_UNIFORM_BUFFER_START')
	public extern static final UNIFORM_BUFFER_START:Int;
	@:native('GL_UNIFORM_BUFFER_SIZE')
	public extern static final UNIFORM_BUFFER_SIZE:Int;
	@:native('GL_MAX_VERTEX_UNIFORM_BLOCKS')
	public extern static final MAX_VERTEX_UNIFORM_BLOCKS:Int;
	@:native('GL_MAX_GEOMETRY_UNIFORM_BLOCKS')
	public extern static final MAX_GEOMETRY_UNIFORM_BLOCKS:Int;
	@:native('GL_MAX_FRAGMENT_UNIFORM_BLOCKS')
	public extern static final MAX_FRAGMENT_UNIFORM_BLOCKS:Int;
	@:native('GL_MAX_COMBINED_UNIFORM_BLOCKS')
	public extern static final MAX_COMBINED_UNIFORM_BLOCKS:Int;
	@:native('GL_MAX_UNIFORM_BUFFER_BINDINGS')
	public extern static final MAX_UNIFORM_BUFFER_BINDINGS:Int;
	@:native('GL_MAX_UNIFORM_BLOCK_SIZE')
	public extern static final MAX_UNIFORM_BLOCK_SIZE:Int;
	@:native('GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS')
	public extern static final MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS:Int;
	@:native('GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS')
	public extern static final MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS:Int;
	@:native('GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS')
	public extern static final MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS:Int;
	@:native('GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT')
	public extern static final UNIFORM_BUFFER_OFFSET_ALIGNMENT:Int;
	@:native('GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH')
	public extern static final ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH:Int;
	@:native('GL_ACTIVE_UNIFORM_BLOCKS')
	public extern static final ACTIVE_UNIFORM_BLOCKS:Int;
	@:native('GL_UNIFORM_TYPE')
	public extern static final UNIFORM_TYPE:Int;
	@:native('GL_UNIFORM_SIZE')
	public extern static final UNIFORM_SIZE:Int;
	@:native('GL_UNIFORM_NAME_LENGTH')
	public extern static final UNIFORM_NAME_LENGTH:Int;
	@:native('GL_UNIFORM_BLOCK_INDEX')
	public extern static final UNIFORM_BLOCK_INDEX:Int;
	@:native('GL_UNIFORM_OFFSET')
	public extern static final UNIFORM_OFFSET:Int;
	@:native('GL_UNIFORM_ARRAY_STRIDE')
	public extern static final UNIFORM_ARRAY_STRIDE:Int;
	@:native('GL_UNIFORM_MATRIX_STRIDE')
	public extern static final UNIFORM_MATRIX_STRIDE:Int;
	@:native('GL_UNIFORM_IS_ROW_MAJOR')
	public extern static final UNIFORM_IS_ROW_MAJOR:Int;
	@:native('GL_UNIFORM_BLOCK_BINDING')
	public extern static final UNIFORM_BLOCK_BINDING:Int;
	@:native('GL_UNIFORM_BLOCK_DATA_SIZE')
	public extern static final UNIFORM_BLOCK_DATA_SIZE:Int;
	@:native('GL_UNIFORM_BLOCK_NAME_LENGTH')
	public extern static final UNIFORM_BLOCK_NAME_LENGTH:Int;
	@:native('GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS')
	public extern static final UNIFORM_BLOCK_ACTIVE_UNIFORMS:Int;
	@:native('GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES')
	public extern static final UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES:Int;
	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER')
	public extern static final UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER:Int;
	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER')
	public extern static final UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER:Int;
	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER')
	public extern static final UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER:Int;
	@:native('GL_INVALID_INDEX')
	public extern static final INVALID_INDEX:Int;
	@:native('GL_CONTEXT_CORE_PROFILE_BIT')
	public extern static final CONTEXT_CORE_PROFILE_BIT:Int;
	@:native('GL_CONTEXT_COMPATIBILITY_PROFILE_BIT')
	public extern static final CONTEXT_COMPATIBILITY_PROFILE_BIT:Int;
	@:native('GL_LINES_ADJACENCY')
	public extern static final LINES_ADJACENCY:Int;
	@:native('GL_LINE_STRIP_ADJACENCY')
	public extern static final LINE_STRIP_ADJACENCY:Int;
	@:native('GL_TRIANGLES_ADJACENCY')
	public extern static final TRIANGLES_ADJACENCY:Int;
	@:native('GL_TRIANGLE_STRIP_ADJACENCY')
	public extern static final TRIANGLE_STRIP_ADJACENCY:Int;
	@:native('GL_PROGRAM_POINT_SIZE')
	public extern static final PROGRAM_POINT_SIZE:Int;
	@:native('GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS')
	public extern static final MAX_GEOMETRY_TEXTURE_IMAGE_UNITS:Int;
	@:native('GL_FRAMEBUFFER_ATTACHMENT_LAYERED')
	public extern static final FRAMEBUFFER_ATTACHMENT_LAYERED:Int;
	@:native('GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS')
	public extern static final FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS:Int;
	@:native('GL_GEOMETRY_SHADER')
	public extern static final GEOMETRY_SHADER:Int;
	@:native('GL_GEOMETRY_VERTICES_OUT')
	public extern static final GEOMETRY_VERTICES_OUT:Int;
	@:native('GL_GEOMETRY_INPUT_TYPE')
	public extern static final GEOMETRY_INPUT_TYPE:Int;
	@:native('GL_GEOMETRY_OUTPUT_TYPE')
	public extern static final GEOMETRY_OUTPUT_TYPE:Int;
	@:native('GL_MAX_GEOMETRY_UNIFORM_COMPONENTS')
	public extern static final MAX_GEOMETRY_UNIFORM_COMPONENTS:Int;
	@:native('GL_MAX_GEOMETRY_OUTPUT_VERTICES')
	public extern static final MAX_GEOMETRY_OUTPUT_VERTICES:Int;
	@:native('GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS')
	public extern static final MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS:Int;
	@:native('GL_MAX_VERTEX_OUTPUT_COMPONENTS')
	public extern static final MAX_VERTEX_OUTPUT_COMPONENTS:Int;
	@:native('GL_MAX_GEOMETRY_INPUT_COMPONENTS')
	public extern static final MAX_GEOMETRY_INPUT_COMPONENTS:Int;
	@:native('GL_MAX_GEOMETRY_OUTPUT_COMPONENTS')
	public extern static final MAX_GEOMETRY_OUTPUT_COMPONENTS:Int;
	@:native('GL_MAX_FRAGMENT_INPUT_COMPONENTS')
	public extern static final MAX_FRAGMENT_INPUT_COMPONENTS:Int;
	@:native('GL_CONTEXT_PROFILE_MASK')
	public extern static final CONTEXT_PROFILE_MASK:Int;
	@:native('GL_DEPTH_CLAMP')
	public extern static final DEPTH_CLAMP:Int;
	@:native('GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION')
	public extern static final QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION:Int;
	@:native('GL_FIRST_VERTEX_CONVENTION')
	public extern static final FIRST_VERTEX_CONVENTION:Int;
	@:native('GL_LAST_VERTEX_CONVENTION')
	public extern static final LAST_VERTEX_CONVENTION:Int;
	@:native('GL_PROVOKING_VERTEX')
	public extern static final PROVOKING_VERTEX:Int;
	@:native('GL_TEXTURE_CUBE_MAP_SEAMLESS')
	public extern static final TEXTURE_CUBE_MAP_SEAMLESS:Int;
	@:native('GL_MAX_SERVER_WAIT_TIMEOUT')
	public extern static final MAX_SERVER_WAIT_TIMEOUT:Int;
	@:native('GL_OBJECT_TYPE')
	public extern static final OBJECT_TYPE:Int;
	@:native('GL_SYNC_CONDITION')
	public extern static final SYNC_CONDITION:Int;
	@:native('GL_SYNC_STATUS')
	public extern static final SYNC_STATUS:Int;
	@:native('GL_SYNC_FLAGS')
	public extern static final SYNC_FLAGS:Int;
	@:native('GL_SYNC_FENCE')
	public extern static final SYNC_FENCE:Int;
	@:native('GL_SYNC_GPU_COMMANDS_COMPLETE')
	public extern static final SYNC_GPU_COMMANDS_COMPLETE:Int;
	@:native('GL_UNSIGNALED')
	public extern static final UNSIGNALED:Int;
	@:native('GL_SIGNALED')
	public extern static final SIGNALED:Int;
	@:native('GL_ALREADY_SIGNALED')
	public extern static final ALREADY_SIGNALED:Int;
	@:native('GL_TIMEOUT_EXPIRED')
	public extern static final TIMEOUT_EXPIRED:Int;
	@:native('GL_CONDITION_SATISFIED')
	public extern static final CONDITION_SATISFIED:Int;
	@:native('GL_WAIT_FAILED')
	public extern static final WAIT_FAILED:Int;
	@:native('GL_TIMEOUT_IGNORED')
	public extern static final TIMEOUT_IGNORED:Int;
	@:native('GL_SYNC_FLUSH_COMMANDS_BIT')
	public extern static final SYNC_FLUSH_COMMANDS_BIT:Int;
	@:native('GL_SAMPLE_POSITION')
	public extern static final SAMPLE_POSITION:Int;
	@:native('GL_SAMPLE_MASK')
	public extern static final SAMPLE_MASK:Int;
	@:native('GL_SAMPLE_MASK_VALUE')
	public extern static final SAMPLE_MASK_VALUE:Int;
	@:native('GL_MAX_SAMPLE_MASK_WORDS')
	public extern static final MAX_SAMPLE_MASK_WORDS:Int;
	@:native('GL_TEXTURE_2D_MULTISAMPLE')
	public extern static final TEXTURE_2D_MULTISAMPLE:Int;
	@:native('GL_PROXY_TEXTURE_2D_MULTISAMPLE')
	public extern static final PROXY_TEXTURE_2D_MULTISAMPLE:Int;
	@:native('GL_TEXTURE_2D_MULTISAMPLE_ARRAY')
	public extern static final TEXTURE_2D_MULTISAMPLE_ARRAY:Int;
	@:native('GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY')
	public extern static final PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY:Int;
	@:native('GL_TEXTURE_BINDING_2D_MULTISAMPLE')
	public extern static final TEXTURE_BINDING_2D_MULTISAMPLE:Int;
	@:native('GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY')
	public extern static final TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY:Int;
	@:native('GL_TEXTURE_SAMPLES')
	public extern static final TEXTURE_SAMPLES:Int;
	@:native('GL_TEXTURE_FIXED_SAMPLE_LOCATIONS')
	public extern static final TEXTURE_FIXED_SAMPLE_LOCATIONS:Int;
	@:native('GL_SAMPLER_2D_MULTISAMPLE')
	public extern static final SAMPLER_2D_MULTISAMPLE:Int;
	@:native('GL_INT_SAMPLER_2D_MULTISAMPLE')
	public extern static final INT_SAMPLER_2D_MULTISAMPLE:Int;
	@:native('GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE')
	public extern static final UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE:Int;
	@:native('GL_SAMPLER_2D_MULTISAMPLE_ARRAY')
	public extern static final SAMPLER_2D_MULTISAMPLE_ARRAY:Int;
	@:native('GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY')
	public extern static final INT_SAMPLER_2D_MULTISAMPLE_ARRAY:Int;
	@:native('GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY')
	public extern static final UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY:Int;
	@:native('GL_MAX_COLOR_TEXTURE_SAMPLES')
	public extern static final MAX_COLOR_TEXTURE_SAMPLES:Int;
	@:native('GL_MAX_DEPTH_TEXTURE_SAMPLES')
	public extern static final MAX_DEPTH_TEXTURE_SAMPLES:Int;
	@:native('GL_MAX_INTEGER_SAMPLES')
	public extern static final MAX_INTEGER_SAMPLES:Int;
	@:native('GL_VERTEX_ATTRIB_ARRAY_DIVISOR')
	public extern static final VERTEX_ATTRIB_ARRAY_DIVISOR:Int;
	@:native('GL_SRC1_COLOR')
	public extern static final SRC1_COLOR:Int;
	@:native('GL_ONE_MINUS_SRC1_COLOR')
	public extern static final ONE_MINUS_SRC1_COLOR:Int;
	@:native('GL_ONE_MINUS_SRC1_ALPHA')
	public extern static final ONE_MINUS_SRC1_ALPHA:Int;
	@:native('GL_MAX_DUAL_SOURCE_DRAW_BUFFERS')
	public extern static final MAX_DUAL_SOURCE_DRAW_BUFFERS:Int;
	@:native('GL_ANY_SAMPLES_PASSED')
	public extern static final ANY_SAMPLES_PASSED:Int;
	@:native('GL_SAMPLER_BINDING')
	public extern static final SAMPLER_BINDING:Int;
	@:native('GL_RGB10_A2UI')
	public extern static final RGB10_A2UI:Int;
	@:native('GL_TEXTURE_SWIZZLE_R')
	public extern static final TEXTURE_SWIZZLE_R:Int;
	@:native('GL_TEXTURE_SWIZZLE_G')
	public extern static final TEXTURE_SWIZZLE_G:Int;
	@:native('GL_TEXTURE_SWIZZLE_B')
	public extern static final TEXTURE_SWIZZLE_B:Int;
	@:native('GL_TEXTURE_SWIZZLE_A')
	public extern static final TEXTURE_SWIZZLE_A:Int;
	@:native('GL_TEXTURE_SWIZZLE_RGBA')
	public extern static final TEXTURE_SWIZZLE_RGBA:Int;
	@:native('GL_TIME_ELAPSED')
	public extern static final TIME_ELAPSED:Int;
	@:native('GL_TIMESTAMP')
	public extern static final TIMESTAMP:Int;
	@:native('GL_INT_2_10_10_10_REV')
	public extern static final INT_2_10_10_10_REV:Int;
	@:native('GL_SAMPLE_SHADING')
	public extern static final SAMPLE_SHADING:Int;
	@:native('GL_MIN_SAMPLE_SHADING_VALUE')
	public extern static final MIN_SAMPLE_SHADING_VALUE:Int;
	@:native('GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET')
	public extern static final MIN_PROGRAM_TEXTURE_GATHER_OFFSET:Int;
	@:native('GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET')
	public extern static final MAX_PROGRAM_TEXTURE_GATHER_OFFSET:Int;
	@:native('GL_TEXTURE_CUBE_MAP_ARRAY')
	public extern static final TEXTURE_CUBE_MAP_ARRAY:Int;
	@:native('GL_TEXTURE_BINDING_CUBE_MAP_ARRAY')
	public extern static final TEXTURE_BINDING_CUBE_MAP_ARRAY:Int;
	@:native('GL_PROXY_TEXTURE_CUBE_MAP_ARRAY')
	public extern static final PROXY_TEXTURE_CUBE_MAP_ARRAY:Int;
	@:native('GL_SAMPLER_CUBE_MAP_ARRAY')
	public extern static final SAMPLER_CUBE_MAP_ARRAY:Int;
	@:native('GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW')
	public extern static final SAMPLER_CUBE_MAP_ARRAY_SHADOW:Int;
	@:native('GL_INT_SAMPLER_CUBE_MAP_ARRAY')
	public extern static final INT_SAMPLER_CUBE_MAP_ARRAY:Int;
	@:native('GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY')
	public extern static final UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY:Int;
	@:native('GL_DRAW_INDIRECT_BUFFER')
	public extern static final DRAW_INDIRECT_BUFFER:Int;
	@:native('GL_DRAW_INDIRECT_BUFFER_BINDING')
	public extern static final DRAW_INDIRECT_BUFFER_BINDING:Int;
	@:native('GL_GEOMETRY_SHADER_INVOCATIONS')
	public extern static final GEOMETRY_SHADER_INVOCATIONS:Int;
	@:native('GL_MAX_GEOMETRY_SHADER_INVOCATIONS')
	public extern static final MAX_GEOMETRY_SHADER_INVOCATIONS:Int;
	@:native('GL_MIN_FRAGMENT_INTERPOLATION_OFFSET')
	public extern static final MIN_FRAGMENT_INTERPOLATION_OFFSET:Int;
	@:native('GL_MAX_FRAGMENT_INTERPOLATION_OFFSET')
	public extern static final MAX_FRAGMENT_INTERPOLATION_OFFSET:Int;
	@:native('GL_FRAGMENT_INTERPOLATION_OFFSET_BITS')
	public extern static final FRAGMENT_INTERPOLATION_OFFSET_BITS:Int;
	@:native('GL_MAX_VERTEX_STREAMS')
	public extern static final MAX_VERTEX_STREAMS:Int;
	@:native('GL_DOUBLE_VEC2')
	public extern static final DOUBLE_VEC2:Int;
	@:native('GL_DOUBLE_VEC3')
	public extern static final DOUBLE_VEC3:Int;
	@:native('GL_DOUBLE_VEC4')
	public extern static final DOUBLE_VEC4:Int;
	@:native('GL_DOUBLE_MAT2')
	public extern static final DOUBLE_MAT2:Int;
	@:native('GL_DOUBLE_MAT3')
	public extern static final DOUBLE_MAT3:Int;
	@:native('GL_DOUBLE_MAT4')
	public extern static final DOUBLE_MAT4:Int;
	@:native('GL_DOUBLE_MAT2x3')
	public extern static final DOUBLE_MAT2x3:Int;
	@:native('GL_DOUBLE_MAT2x4')
	public extern static final DOUBLE_MAT2x4:Int;
	@:native('GL_DOUBLE_MAT3x2')
	public extern static final DOUBLE_MAT3x2:Int;
	@:native('GL_DOUBLE_MAT3x4')
	public extern static final DOUBLE_MAT3x4:Int;
	@:native('GL_DOUBLE_MAT4x2')
	public extern static final DOUBLE_MAT4x2:Int;
	@:native('GL_DOUBLE_MAT4x3')
	public extern static final DOUBLE_MAT4x3:Int;
	@:native('GL_ACTIVE_SUBROUTINES')
	public extern static final ACTIVE_SUBROUTINES:Int;
	@:native('GL_ACTIVE_SUBROUTINE_UNIFORMS')
	public extern static final ACTIVE_SUBROUTINE_UNIFORMS:Int;
	@:native('GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS')
	public extern static final ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS:Int;
	@:native('GL_ACTIVE_SUBROUTINE_MAX_LENGTH')
	public extern static final ACTIVE_SUBROUTINE_MAX_LENGTH:Int;
	@:native('GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH')
	public extern static final ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH:Int;
	@:native('GL_MAX_SUBROUTINES')
	public extern static final MAX_SUBROUTINES:Int;
	@:native('GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS')
	public extern static final MAX_SUBROUTINE_UNIFORM_LOCATIONS:Int;
	@:native('GL_NUM_COMPATIBLE_SUBROUTINES')
	public extern static final NUM_COMPATIBLE_SUBROUTINES:Int;
	@:native('GL_COMPATIBLE_SUBROUTINES')
	public extern static final COMPATIBLE_SUBROUTINES:Int;
	@:native('GL_PATCHES')
	public extern static final PATCHES:Int;
	@:native('GL_PATCH_VERTICES')
	public extern static final PATCH_VERTICES:Int;
	@:native('GL_PATCH_DEFAULT_INNER_LEVEL')
	public extern static final PATCH_DEFAULT_INNER_LEVEL:Int;
	@:native('GL_PATCH_DEFAULT_OUTER_LEVEL')
	public extern static final PATCH_DEFAULT_OUTER_LEVEL:Int;
	@:native('GL_TESS_CONTROL_OUTPUT_VERTICES')
	public extern static final TESS_CONTROL_OUTPUT_VERTICES:Int;
	@:native('GL_TESS_GEN_MODE')
	public extern static final TESS_GEN_MODE:Int;
	@:native('GL_TESS_GEN_SPACING')
	public extern static final TESS_GEN_SPACING:Int;
	@:native('GL_TESS_GEN_VERTEX_ORDER')
	public extern static final TESS_GEN_VERTEX_ORDER:Int;
	@:native('GL_TESS_GEN_POINT_MODE')
	public extern static final TESS_GEN_POINT_MODE:Int;
	@:native('GL_ISOLINES')
	public extern static final ISOLINES:Int;
	@:native('GL_QUADS')
	public extern static final QUADS:Int;
	@:native('GL_FRACTIONAL_ODD')
	public extern static final FRACTIONAL_ODD:Int;
	@:native('GL_FRACTIONAL_EVEN')
	public extern static final FRACTIONAL_EVEN:Int;
	@:native('GL_MAX_PATCH_VERTICES')
	public extern static final MAX_PATCH_VERTICES:Int;
	@:native('GL_MAX_TESS_GEN_LEVEL')
	public extern static final MAX_TESS_GEN_LEVEL:Int;
	@:native('GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS')
	public extern static final MAX_TESS_CONTROL_UNIFORM_COMPONENTS:Int;
	@:native('GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS')
	public extern static final MAX_TESS_EVALUATION_UNIFORM_COMPONENTS:Int;
	@:native('GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS')
	public extern static final MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS:Int;
	@:native('GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS')
	public extern static final MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS:Int;
	@:native('GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS')
	public extern static final MAX_TESS_CONTROL_OUTPUT_COMPONENTS:Int;
	@:native('GL_MAX_TESS_PATCH_COMPONENTS')
	public extern static final MAX_TESS_PATCH_COMPONENTS:Int;
	@:native('GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS')
	public extern static final MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS:Int;
	@:native('GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS')
	public extern static final MAX_TESS_EVALUATION_OUTPUT_COMPONENTS:Int;
	@:native('GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS')
	public extern static final MAX_TESS_CONTROL_UNIFORM_BLOCKS:Int;
	@:native('GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS')
	public extern static final MAX_TESS_EVALUATION_UNIFORM_BLOCKS:Int;
	@:native('GL_MAX_TESS_CONTROL_INPUT_COMPONENTS')
	public extern static final MAX_TESS_CONTROL_INPUT_COMPONENTS:Int;
	@:native('GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS')
	public extern static final MAX_TESS_EVALUATION_INPUT_COMPONENTS:Int;
	@:native('GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS')
	public extern static final MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS:Int;
	@:native('GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS')
	public extern static final MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS:Int;
	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER')
	public extern static final UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER:Int;
	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER')
	public extern static final UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER:Int;
	@:native('GL_TESS_EVALUATION_SHADER')
	public extern static final TESS_EVALUATION_SHADER:Int;
	@:native('GL_TESS_CONTROL_SHADER')
	public extern static final TESS_CONTROL_SHADER:Int;
	@:native('GL_TRANSFORM_FEEDBACK')
	public extern static final TRANSFORM_FEEDBACK:Int;
	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED')
	public extern static final TRANSFORM_FEEDBACK_BUFFER_PAUSED:Int;
	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE')
	public extern static final TRANSFORM_FEEDBACK_BUFFER_ACTIVE:Int;
	@:native('GL_TRANSFORM_FEEDBACK_BINDING')
	public extern static final TRANSFORM_FEEDBACK_BINDING:Int;
	@:native('GL_MAX_TRANSFORM_FEEDBACK_BUFFERS')
	public extern static final MAX_TRANSFORM_FEEDBACK_BUFFERS:Int;
	@:native('GL_FIXED')
	public extern static final FIXED:Int;
	@:native('GL_IMPLEMENTATION_COLOR_READ_TYPE')
	public extern static final IMPLEMENTATION_COLOR_READ_TYPE:Int;
	@:native('GL_IMPLEMENTATION_COLOR_READ_FORMAT')
	public extern static final IMPLEMENTATION_COLOR_READ_FORMAT:Int;
	@:native('GL_LOW_FLOAT')
	public extern static final LOW_FLOAT:Int;
	@:native('GL_MEDIUM_FLOAT')
	public extern static final MEDIUM_FLOAT:Int;
	@:native('GL_HIGH_FLOAT')
	public extern static final HIGH_FLOAT:Int;
	@:native('GL_LOW_INT')
	public extern static final LOW_INT:Int;
	@:native('GL_MEDIUM_INT')
	public extern static final MEDIUM_INT:Int;
	@:native('GL_HIGH_INT')
	public extern static final HIGH_INT:Int;
	@:native('GL_SHADER_COMPILER')
	public extern static final SHADER_COMPILER:Int;
	@:native('GL_SHADER_BINARY_FORMATS')
	public extern static final SHADER_BINARY_FORMATS:Int;
	@:native('GL_NUM_SHADER_BINARY_FORMATS')
	public extern static final NUM_SHADER_BINARY_FORMATS:Int;
	@:native('GL_MAX_VERTEX_UNIFORM_VECTORS')
	public extern static final MAX_VERTEX_UNIFORM_VECTORS:Int;
	@:native('GL_MAX_VARYING_VECTORS')
	public extern static final MAX_VARYING_VECTORS:Int;
	@:native('GL_MAX_FRAGMENT_UNIFORM_VECTORS')
	public extern static final MAX_FRAGMENT_UNIFORM_VECTORS:Int;
	@:native('GL_RGB565')
	public extern static final RGB565:Int;
	@:native('GL_PROGRAM_BINARY_RETRIEVABLE_HINT')
	public extern static final PROGRAM_BINARY_RETRIEVABLE_HINT:Int;
	@:native('GL_PROGRAM_BINARY_LENGTH')
	public extern static final PROGRAM_BINARY_LENGTH:Int;
	@:native('GL_NUM_PROGRAM_BINARY_FORMATS')
	public extern static final NUM_PROGRAM_BINARY_FORMATS:Int;
	@:native('GL_PROGRAM_BINARY_FORMATS')
	public extern static final PROGRAM_BINARY_FORMATS:Int;
	@:native('GL_VERTEX_SHADER_BIT')
	public extern static final VERTEX_SHADER_BIT:Int;
	@:native('GL_FRAGMENT_SHADER_BIT')
	public extern static final FRAGMENT_SHADER_BIT:Int;
	@:native('GL_GEOMETRY_SHADER_BIT')
	public extern static final GEOMETRY_SHADER_BIT:Int;
	@:native('GL_TESS_CONTROL_SHADER_BIT')
	public extern static final TESS_CONTROL_SHADER_BIT:Int;
	@:native('GL_TESS_EVALUATION_SHADER_BIT')
	public extern static final TESS_EVALUATION_SHADER_BIT:Int;
	@:native('GL_ALL_SHADER_BITS')
	public extern static final ALL_SHADER_BITS:Int;
	@:native('GL_PROGRAM_SEPARABLE')
	public extern static final PROGRAM_SEPARABLE:Int;
	@:native('GL_ACTIVE_PROGRAM')
	public extern static final ACTIVE_PROGRAM:Int;
	@:native('GL_PROGRAM_PIPELINE_BINDING')
	public extern static final PROGRAM_PIPELINE_BINDING:Int;
	@:native('GL_MAX_VIEWPORTS')
	public extern static final MAX_VIEWPORTS:Int;
	@:native('GL_VIEWPORT_SUBPIXEL_BITS')
	public extern static final VIEWPORT_SUBPIXEL_BITS:Int;
	@:native('GL_VIEWPORT_BOUNDS_RANGE')
	public extern static final VIEWPORT_BOUNDS_RANGE:Int;
	@:native('GL_LAYER_PROVOKING_VERTEX')
	public extern static final LAYER_PROVOKING_VERTEX:Int;
	@:native('GL_VIEWPORT_INDEX_PROVOKING_VERTEX')
	public extern static final VIEWPORT_INDEX_PROVOKING_VERTEX:Int;
	@:native('GL_UNDEFINED_VERTEX')
	public extern static final UNDEFINED_VERTEX:Int;
	@:native('GL_COPY_READ_BUFFER_BINDING')
	public extern static final COPY_READ_BUFFER_BINDING:Int;
	@:native('GL_COPY_WRITE_BUFFER_BINDING')
	public extern static final COPY_WRITE_BUFFER_BINDING:Int;
	@:native('GL_TRANSFORM_FEEDBACK_ACTIVE')
	public extern static final TRANSFORM_FEEDBACK_ACTIVE:Int;
	@:native('GL_TRANSFORM_FEEDBACK_PAUSED')
	public extern static final TRANSFORM_FEEDBACK_PAUSED:Int;
	@:native('GL_UNPACK_COMPRESSED_BLOCK_WIDTH')
	public extern static final UNPACK_COMPRESSED_BLOCK_WIDTH:Int;
	@:native('GL_UNPACK_COMPRESSED_BLOCK_HEIGHT')
	public extern static final UNPACK_COMPRESSED_BLOCK_HEIGHT:Int;
	@:native('GL_UNPACK_COMPRESSED_BLOCK_DEPTH')
	public extern static final UNPACK_COMPRESSED_BLOCK_DEPTH:Int;
	@:native('GL_UNPACK_COMPRESSED_BLOCK_SIZE')
	public extern static final UNPACK_COMPRESSED_BLOCK_SIZE:Int;
	@:native('GL_PACK_COMPRESSED_BLOCK_WIDTH')
	public extern static final PACK_COMPRESSED_BLOCK_WIDTH:Int;
	@:native('GL_PACK_COMPRESSED_BLOCK_HEIGHT')
	public extern static final PACK_COMPRESSED_BLOCK_HEIGHT:Int;
	@:native('GL_PACK_COMPRESSED_BLOCK_DEPTH')
	public extern static final PACK_COMPRESSED_BLOCK_DEPTH:Int;
	@:native('GL_PACK_COMPRESSED_BLOCK_SIZE')
	public extern static final PACK_COMPRESSED_BLOCK_SIZE:Int;
	@:native('GL_NUM_SAMPLE_COUNTS')
	public extern static final NUM_SAMPLE_COUNTS:Int;
	@:native('GL_MIN_MAP_BUFFER_ALIGNMENT')
	public extern static final MIN_MAP_BUFFER_ALIGNMENT:Int;
	@:native('GL_ATOMIC_COUNTER_BUFFER')
	public extern static final ATOMIC_COUNTER_BUFFER:Int;
	@:native('GL_ATOMIC_COUNTER_BUFFER_BINDING')
	public extern static final ATOMIC_COUNTER_BUFFER_BINDING:Int;
	@:native('GL_ATOMIC_COUNTER_BUFFER_START')
	public extern static final ATOMIC_COUNTER_BUFFER_START:Int;
	@:native('GL_ATOMIC_COUNTER_BUFFER_SIZE')
	public extern static final ATOMIC_COUNTER_BUFFER_SIZE:Int;
	@:native('GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE')
	public extern static final ATOMIC_COUNTER_BUFFER_DATA_SIZE:Int;
	@:native('GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS')
	public extern static final ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS:Int;
	@:native('GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES')
	public extern static final ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES:Int;
	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER')
	public extern static final ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER:Int;
	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER')
	public extern static final ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER:Int;
	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER')
	public extern static final ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER:Int;
	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER')
	public extern static final ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER:Int;
	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER')
	public extern static final ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER:Int;
	@:native('GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS')
	public extern static final MAX_VERTEX_ATOMIC_COUNTER_BUFFERS:Int;
	@:native('GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS')
	public extern static final MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS:Int;
	@:native('GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS')
	public extern static final MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS:Int;
	@:native('GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS')
	public extern static final MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS:Int;
	@:native('GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS')
	public extern static final MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS:Int;
	@:native('GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS')
	public extern static final MAX_COMBINED_ATOMIC_COUNTER_BUFFERS:Int;
	@:native('GL_MAX_VERTEX_ATOMIC_COUNTERS')
	public extern static final MAX_VERTEX_ATOMIC_COUNTERS:Int;
	@:native('GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS')
	public extern static final MAX_TESS_CONTROL_ATOMIC_COUNTERS:Int;
	@:native('GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS')
	public extern static final MAX_TESS_EVALUATION_ATOMIC_COUNTERS:Int;
	@:native('GL_MAX_GEOMETRY_ATOMIC_COUNTERS')
	public extern static final MAX_GEOMETRY_ATOMIC_COUNTERS:Int;
	@:native('GL_MAX_FRAGMENT_ATOMIC_COUNTERS')
	public extern static final MAX_FRAGMENT_ATOMIC_COUNTERS:Int;
	@:native('GL_MAX_COMBINED_ATOMIC_COUNTERS')
	public extern static final MAX_COMBINED_ATOMIC_COUNTERS:Int;
	@:native('GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE')
	public extern static final MAX_ATOMIC_COUNTER_BUFFER_SIZE:Int;
	@:native('GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS')
	public extern static final MAX_ATOMIC_COUNTER_BUFFER_BINDINGS:Int;
	@:native('GL_ACTIVE_ATOMIC_COUNTER_BUFFERS')
	public extern static final ACTIVE_ATOMIC_COUNTER_BUFFERS:Int;
	@:native('GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX')
	public extern static final UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX:Int;
	@:native('GL_UNSIGNED_INT_ATOMIC_COUNTER')
	public extern static final UNSIGNED_INT_ATOMIC_COUNTER:Int;
	@:native('GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT')
	public extern static final VERTEX_ATTRIB_ARRAY_BARRIER_BIT:Int;
	@:native('GL_ELEMENT_ARRAY_BARRIER_BIT')
	public extern static final ELEMENT_ARRAY_BARRIER_BIT:Int;
	@:native('GL_UNIFORM_BARRIER_BIT')
	public extern static final UNIFORM_BARRIER_BIT:Int;
	@:native('GL_TEXTURE_FETCH_BARRIER_BIT')
	public extern static final TEXTURE_FETCH_BARRIER_BIT:Int;
	@:native('GL_SHADER_IMAGE_ACCESS_BARRIER_BIT')
	public extern static final SHADER_IMAGE_ACCESS_BARRIER_BIT:Int;
	@:native('GL_COMMAND_BARRIER_BIT')
	public extern static final COMMAND_BARRIER_BIT:Int;
	@:native('GL_PIXEL_BUFFER_BARRIER_BIT')
	public extern static final PIXEL_BUFFER_BARRIER_BIT:Int;
	@:native('GL_TEXTURE_UPDATE_BARRIER_BIT')
	public extern static final TEXTURE_UPDATE_BARRIER_BIT:Int;
	@:native('GL_BUFFER_UPDATE_BARRIER_BIT')
	public extern static final BUFFER_UPDATE_BARRIER_BIT:Int;
	@:native('GL_FRAMEBUFFER_BARRIER_BIT')
	public extern static final FRAMEBUFFER_BARRIER_BIT:Int;
	@:native('GL_TRANSFORM_FEEDBACK_BARRIER_BIT')
	public extern static final TRANSFORM_FEEDBACK_BARRIER_BIT:Int;
	@:native('GL_ATOMIC_COUNTER_BARRIER_BIT')
	public extern static final ATOMIC_COUNTER_BARRIER_BIT:Int;
	@:native('GL_ALL_BARRIER_BITS')
	public extern static final ALL_BARRIER_BITS:Int;
	@:native('GL_MAX_IMAGE_UNITS')
	public extern static final MAX_IMAGE_UNITS:Int;
	@:native('GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS')
	public extern static final MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS:Int;
	@:native('GL_IMAGE_BINDING_NAME')
	public extern static final IMAGE_BINDING_NAME:Int;
	@:native('GL_IMAGE_BINDING_LEVEL')
	public extern static final IMAGE_BINDING_LEVEL:Int;
	@:native('GL_IMAGE_BINDING_LAYERED')
	public extern static final IMAGE_BINDING_LAYERED:Int;
	@:native('GL_IMAGE_BINDING_LAYER')
	public extern static final IMAGE_BINDING_LAYER:Int;
	@:native('GL_IMAGE_BINDING_ACCESS')
	public extern static final IMAGE_BINDING_ACCESS:Int;
	@:native('GL_IMAGE_1D')
	public extern static final IMAGE_1D:Int;
	@:native('GL_IMAGE_2D')
	public extern static final IMAGE_2D:Int;
	@:native('GL_IMAGE_3D')
	public extern static final IMAGE_3D:Int;
	@:native('GL_IMAGE_2D_RECT')
	public extern static final IMAGE_2D_RECT:Int;
	@:native('GL_IMAGE_CUBE')
	public extern static final IMAGE_CUBE:Int;
	@:native('GL_IMAGE_BUFFER')
	public extern static final IMAGE_BUFFER:Int;
	@:native('GL_IMAGE_1D_ARRAY')
	public extern static final IMAGE_1D_ARRAY:Int;
	@:native('GL_IMAGE_2D_ARRAY')
	public extern static final IMAGE_2D_ARRAY:Int;
	@:native('GL_IMAGE_CUBE_MAP_ARRAY')
	public extern static final IMAGE_CUBE_MAP_ARRAY:Int;
	@:native('GL_IMAGE_2D_MULTISAMPLE')
	public extern static final IMAGE_2D_MULTISAMPLE:Int;
	@:native('GL_IMAGE_2D_MULTISAMPLE_ARRAY')
	public extern static final IMAGE_2D_MULTISAMPLE_ARRAY:Int;
	@:native('GL_INT_IMAGE_1D')
	public extern static final INT_IMAGE_1D:Int;
	@:native('GL_INT_IMAGE_2D')
	public extern static final INT_IMAGE_2D:Int;
	@:native('GL_INT_IMAGE_3D')
	public extern static final INT_IMAGE_3D:Int;
	@:native('GL_INT_IMAGE_2D_RECT')
	public extern static final INT_IMAGE_2D_RECT:Int;
	@:native('GL_INT_IMAGE_CUBE')
	public extern static final INT_IMAGE_CUBE:Int;
	@:native('GL_INT_IMAGE_BUFFER')
	public extern static final INT_IMAGE_BUFFER:Int;
	@:native('GL_INT_IMAGE_1D_ARRAY')
	public extern static final INT_IMAGE_1D_ARRAY:Int;
	@:native('GL_INT_IMAGE_2D_ARRAY')
	public extern static final INT_IMAGE_2D_ARRAY:Int;
	@:native('GL_INT_IMAGE_CUBE_MAP_ARRAY')
	public extern static final INT_IMAGE_CUBE_MAP_ARRAY:Int;
	@:native('GL_INT_IMAGE_2D_MULTISAMPLE')
	public extern static final INT_IMAGE_2D_MULTISAMPLE:Int;
	@:native('GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY')
	public extern static final INT_IMAGE_2D_MULTISAMPLE_ARRAY:Int;
	@:native('GL_UNSIGNED_INT_IMAGE_1D')
	public extern static final UNSIGNED_INT_IMAGE_1D:Int;
	@:native('GL_UNSIGNED_INT_IMAGE_2D')
	public extern static final UNSIGNED_INT_IMAGE_2D:Int;
	@:native('GL_UNSIGNED_INT_IMAGE_3D')
	public extern static final UNSIGNED_INT_IMAGE_3D:Int;
	@:native('GL_UNSIGNED_INT_IMAGE_2D_RECT')
	public extern static final UNSIGNED_INT_IMAGE_2D_RECT:Int;
	@:native('GL_UNSIGNED_INT_IMAGE_CUBE')
	public extern static final UNSIGNED_INT_IMAGE_CUBE:Int;
	@:native('GL_UNSIGNED_INT_IMAGE_BUFFER')
	public extern static final UNSIGNED_INT_IMAGE_BUFFER:Int;
	@:native('GL_UNSIGNED_INT_IMAGE_1D_ARRAY')
	public extern static final UNSIGNED_INT_IMAGE_1D_ARRAY:Int;
	@:native('GL_UNSIGNED_INT_IMAGE_2D_ARRAY')
	public extern static final UNSIGNED_INT_IMAGE_2D_ARRAY:Int;
	@:native('GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY')
	public extern static final UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY:Int;
	@:native('GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE')
	public extern static final UNSIGNED_INT_IMAGE_2D_MULTISAMPLE:Int;
	@:native('GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY')
	public extern static final UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY:Int;
	@:native('GL_MAX_IMAGE_SAMPLES')
	public extern static final MAX_IMAGE_SAMPLES:Int;
	@:native('GL_IMAGE_BINDING_FORMAT')
	public extern static final IMAGE_BINDING_FORMAT:Int;
	@:native('GL_IMAGE_FORMAT_COMPATIBILITY_TYPE')
	public extern static final IMAGE_FORMAT_COMPATIBILITY_TYPE:Int;
	@:native('GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE')
	public extern static final IMAGE_FORMAT_COMPATIBILITY_BY_SIZE:Int;
	@:native('GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS')
	public extern static final IMAGE_FORMAT_COMPATIBILITY_BY_CLASS:Int;
	@:native('GL_MAX_VERTEX_IMAGE_UNIFORMS')
	public extern static final MAX_VERTEX_IMAGE_UNIFORMS:Int;
	@:native('GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS')
	public extern static final MAX_TESS_CONTROL_IMAGE_UNIFORMS:Int;
	@:native('GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS')
	public extern static final MAX_TESS_EVALUATION_IMAGE_UNIFORMS:Int;
	@:native('GL_MAX_GEOMETRY_IMAGE_UNIFORMS')
	public extern static final MAX_GEOMETRY_IMAGE_UNIFORMS:Int;
	@:native('GL_MAX_FRAGMENT_IMAGE_UNIFORMS')
	public extern static final MAX_FRAGMENT_IMAGE_UNIFORMS:Int;
	@:native('GL_MAX_COMBINED_IMAGE_UNIFORMS')
	public extern static final MAX_COMBINED_IMAGE_UNIFORMS:Int;
	@:native('GL_COMPRESSED_RGBA_BPTC_UNORM')
	public extern static final COMPRESSED_RGBA_BPTC_UNORM:Int;
	@:native('GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM')
	public extern static final COMPRESSED_SRGB_ALPHA_BPTC_UNORM:Int;
	@:native('GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT')
	public extern static final COMPRESSED_RGB_BPTC_SIGNED_FLOAT:Int;
	@:native('GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT')
	public extern static final COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT:Int;
	@:native('GL_TEXTURE_IMMUTABLE_FORMAT')
	public extern static final TEXTURE_IMMUTABLE_FORMAT:Int;
	@:native('GL_NUM_SHADING_LANGUAGE_VERSIONS')
	public extern static final NUM_SHADING_LANGUAGE_VERSIONS:Int;
	@:native('GL_VERTEX_ATTRIB_ARRAY_LONG')
	public extern static final VERTEX_ATTRIB_ARRAY_LONG:Int;
	@:native('GL_COMPRESSED_RGB8_ETC2')
	public extern static final COMPRESSED_RGB8_ETC2:Int;
	@:native('GL_COMPRESSED_SRGB8_ETC2')
	public extern static final COMPRESSED_SRGB8_ETC2:Int;
	@:native('GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2')
	public extern static final COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2:Int;
	@:native('GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2')
	public extern static final COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2:Int;
	@:native('GL_COMPRESSED_RGBA8_ETC2_EAC')
	public extern static final COMPRESSED_RGBA8_ETC2_EAC:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ETC2_EAC:Int;
	@:native('GL_COMPRESSED_R11_EAC')
	public extern static final COMPRESSED_R11_EAC:Int;
	@:native('GL_COMPRESSED_SIGNED_R11_EAC')
	public extern static final COMPRESSED_SIGNED_R11_EAC:Int;
	@:native('GL_COMPRESSED_RG11_EAC')
	public extern static final COMPRESSED_RG11_EAC:Int;
	@:native('GL_COMPRESSED_SIGNED_RG11_EAC')
	public extern static final COMPRESSED_SIGNED_RG11_EAC:Int;
	@:native('GL_PRIMITIVE_RESTART_FIXED_INDEX')
	public extern static final PRIMITIVE_RESTART_FIXED_INDEX:Int;
	@:native('GL_ANY_SAMPLES_PASSED_CONSERVATIVE')
	public extern static final ANY_SAMPLES_PASSED_CONSERVATIVE:Int;
	@:native('GL_MAX_ELEMENT_INDEX')
	public extern static final MAX_ELEMENT_INDEX:Int;
	@:native('GL_COMPUTE_SHADER')
	public extern static final COMPUTE_SHADER:Int;
	@:native('GL_MAX_COMPUTE_UNIFORM_BLOCKS')
	public extern static final MAX_COMPUTE_UNIFORM_BLOCKS:Int;
	@:native('GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS')
	public extern static final MAX_COMPUTE_TEXTURE_IMAGE_UNITS:Int;
	@:native('GL_MAX_COMPUTE_IMAGE_UNIFORMS')
	public extern static final MAX_COMPUTE_IMAGE_UNIFORMS:Int;
	@:native('GL_MAX_COMPUTE_SHARED_MEMORY_SIZE')
	public extern static final MAX_COMPUTE_SHARED_MEMORY_SIZE:Int;
	@:native('GL_MAX_COMPUTE_UNIFORM_COMPONENTS')
	public extern static final MAX_COMPUTE_UNIFORM_COMPONENTS:Int;
	@:native('GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS')
	public extern static final MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS:Int;
	@:native('GL_MAX_COMPUTE_ATOMIC_COUNTERS')
	public extern static final MAX_COMPUTE_ATOMIC_COUNTERS:Int;
	@:native('GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS')
	public extern static final MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS:Int;
	@:native('GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS')
	public extern static final MAX_COMPUTE_WORK_GROUP_INVOCATIONS:Int;
	@:native('GL_MAX_COMPUTE_WORK_GROUP_COUNT')
	public extern static final MAX_COMPUTE_WORK_GROUP_COUNT:Int;
	@:native('GL_MAX_COMPUTE_WORK_GROUP_SIZE')
	public extern static final MAX_COMPUTE_WORK_GROUP_SIZE:Int;
	@:native('GL_COMPUTE_WORK_GROUP_SIZE')
	public extern static final COMPUTE_WORK_GROUP_SIZE:Int;
	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER')
	public extern static final UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER:Int;
	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER')
	public extern static final ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER:Int;
	@:native('GL_DISPATCH_INDIRECT_BUFFER')
	public extern static final DISPATCH_INDIRECT_BUFFER:Int;
	@:native('GL_DISPATCH_INDIRECT_BUFFER_BINDING')
	public extern static final DISPATCH_INDIRECT_BUFFER_BINDING:Int;
	@:native('GL_COMPUTE_SHADER_BIT')
	public extern static final COMPUTE_SHADER_BIT:Int;
	@:native('GL_DEBUG_OUTPUT_SYNCHRONOUS')
	public extern static final DEBUG_OUTPUT_SYNCHRONOUS:Int;
	@:native('GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH')
	public extern static final DEBUG_NEXT_LOGGED_MESSAGE_LENGTH:Int;
	@:native('GL_DEBUG_CALLBACK_FUNCTION')
	public extern static final DEBUG_CALLBACK_FUNCTION:Int;
	@:native('GL_DEBUG_CALLBACK_USER_PARAM')
	public extern static final DEBUG_CALLBACK_USER_PARAM:Int;
	@:native('GL_DEBUG_SOURCE_API')
	public extern static final DEBUG_SOURCE_API:Int;
	@:native('GL_DEBUG_SOURCE_WINDOW_SYSTEM')
	public extern static final DEBUG_SOURCE_WINDOW_SYSTEM:Int;
	@:native('GL_DEBUG_SOURCE_SHADER_COMPILER')
	public extern static final DEBUG_SOURCE_SHADER_COMPILER:Int;
	@:native('GL_DEBUG_SOURCE_THIRD_PARTY')
	public extern static final DEBUG_SOURCE_THIRD_PARTY:Int;
	@:native('GL_DEBUG_SOURCE_APPLICATION')
	public extern static final DEBUG_SOURCE_APPLICATION:Int;
	@:native('GL_DEBUG_SOURCE_OTHER')
	public extern static final DEBUG_SOURCE_OTHER:Int;
	@:native('GL_DEBUG_TYPE_ERROR')
	public extern static final DEBUG_TYPE_ERROR:Int;
	@:native('GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR')
	public extern static final DEBUG_TYPE_DEPRECATED_BEHAVIOR:Int;
	@:native('GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR')
	public extern static final DEBUG_TYPE_UNDEFINED_BEHAVIOR:Int;
	@:native('GL_DEBUG_TYPE_PORTABILITY')
	public extern static final DEBUG_TYPE_PORTABILITY:Int;
	@:native('GL_DEBUG_TYPE_PERFORMANCE')
	public extern static final DEBUG_TYPE_PERFORMANCE:Int;
	@:native('GL_DEBUG_TYPE_OTHER')
	public extern static final DEBUG_TYPE_OTHER:Int;
	@:native('GL_MAX_DEBUG_MESSAGE_LENGTH')
	public extern static final MAX_DEBUG_MESSAGE_LENGTH:Int;
	@:native('GL_MAX_DEBUG_LOGGED_MESSAGES')
	public extern static final MAX_DEBUG_LOGGED_MESSAGES:Int;
	@:native('GL_DEBUG_LOGGED_MESSAGES')
	public extern static final DEBUG_LOGGED_MESSAGES:Int;
	@:native('GL_DEBUG_SEVERITY_HIGH')
	public extern static final DEBUG_SEVERITY_HIGH:Int;
	@:native('GL_DEBUG_SEVERITY_MEDIUM')
	public extern static final DEBUG_SEVERITY_MEDIUM:Int;
	@:native('GL_DEBUG_SEVERITY_LOW')
	public extern static final DEBUG_SEVERITY_LOW:Int;
	@:native('GL_DEBUG_TYPE_MARKER')
	public extern static final DEBUG_TYPE_MARKER:Int;
	@:native('GL_DEBUG_TYPE_PUSH_GROUP')
	public extern static final DEBUG_TYPE_PUSH_GROUP:Int;
	@:native('GL_DEBUG_TYPE_POP_GROUP')
	public extern static final DEBUG_TYPE_POP_GROUP:Int;
	@:native('GL_DEBUG_SEVERITY_NOTIFICATION')
	public extern static final DEBUG_SEVERITY_NOTIFICATION:Int;
	@:native('GL_MAX_DEBUG_GROUP_STACK_DEPTH')
	public extern static final MAX_DEBUG_GROUP_STACK_DEPTH:Int;
	@:native('GL_DEBUG_GROUP_STACK_DEPTH')
	public extern static final DEBUG_GROUP_STACK_DEPTH:Int;
	@:native('GL_BUFFER')
	public extern static final BUFFER:Int;
	@:native('GL_SHADER')
	public extern static final SHADER:Int;
	@:native('GL_PROGRAM')
	public extern static final PROGRAM:Int;
	@:native('GL_VERTEX_ARRAY')
	public extern static final VERTEX_ARRAY:Int;
	@:native('GL_QUERY')
	public extern static final QUERY:Int;
	@:native('GL_PROGRAM_PIPELINE')
	public extern static final PROGRAM_PIPELINE:Int;
	@:native('GL_SAMPLER')
	public extern static final SAMPLER:Int;
	@:native('GL_MAX_LABEL_LENGTH')
	public extern static final MAX_LABEL_LENGTH:Int;
	@:native('GL_DEBUG_OUTPUT')
	public extern static final DEBUG_OUTPUT:Int;
	@:native('GL_CONTEXT_FLAG_DEBUG_BIT')
	public extern static final CONTEXT_FLAG_DEBUG_BIT:Int;
	@:native('GL_MAX_UNIFORM_LOCATIONS')
	public extern static final MAX_UNIFORM_LOCATIONS:Int;
	@:native('GL_FRAMEBUFFER_DEFAULT_WIDTH')
	public extern static final FRAMEBUFFER_DEFAULT_WIDTH:Int;
	@:native('GL_FRAMEBUFFER_DEFAULT_HEIGHT')
	public extern static final FRAMEBUFFER_DEFAULT_HEIGHT:Int;
	@:native('GL_FRAMEBUFFER_DEFAULT_LAYERS')
	public extern static final FRAMEBUFFER_DEFAULT_LAYERS:Int;
	@:native('GL_FRAMEBUFFER_DEFAULT_SAMPLES')
	public extern static final FRAMEBUFFER_DEFAULT_SAMPLES:Int;
	@:native('GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS')
	public extern static final FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS:Int;
	@:native('GL_MAX_FRAMEBUFFER_WIDTH')
	public extern static final MAX_FRAMEBUFFER_WIDTH:Int;
	@:native('GL_MAX_FRAMEBUFFER_HEIGHT')
	public extern static final MAX_FRAMEBUFFER_HEIGHT:Int;
	@:native('GL_MAX_FRAMEBUFFER_LAYERS')
	public extern static final MAX_FRAMEBUFFER_LAYERS:Int;
	@:native('GL_MAX_FRAMEBUFFER_SAMPLES')
	public extern static final MAX_FRAMEBUFFER_SAMPLES:Int;
	@:native('GL_INTERNALFORMAT_SUPPORTED')
	public extern static final INTERNALFORMAT_SUPPORTED:Int;
	@:native('GL_INTERNALFORMAT_PREFERRED')
	public extern static final INTERNALFORMAT_PREFERRED:Int;
	@:native('GL_INTERNALFORMAT_RED_SIZE')
	public extern static final INTERNALFORMAT_RED_SIZE:Int;
	@:native('GL_INTERNALFORMAT_GREEN_SIZE')
	public extern static final INTERNALFORMAT_GREEN_SIZE:Int;
	@:native('GL_INTERNALFORMAT_BLUE_SIZE')
	public extern static final INTERNALFORMAT_BLUE_SIZE:Int;
	@:native('GL_INTERNALFORMAT_ALPHA_SIZE')
	public extern static final INTERNALFORMAT_ALPHA_SIZE:Int;
	@:native('GL_INTERNALFORMAT_DEPTH_SIZE')
	public extern static final INTERNALFORMAT_DEPTH_SIZE:Int;
	@:native('GL_INTERNALFORMAT_STENCIL_SIZE')
	public extern static final INTERNALFORMAT_STENCIL_SIZE:Int;
	@:native('GL_INTERNALFORMAT_SHARED_SIZE')
	public extern static final INTERNALFORMAT_SHARED_SIZE:Int;
	@:native('GL_INTERNALFORMAT_RED_TYPE')
	public extern static final INTERNALFORMAT_RED_TYPE:Int;
	@:native('GL_INTERNALFORMAT_GREEN_TYPE')
	public extern static final INTERNALFORMAT_GREEN_TYPE:Int;
	@:native('GL_INTERNALFORMAT_BLUE_TYPE')
	public extern static final INTERNALFORMAT_BLUE_TYPE:Int;
	@:native('GL_INTERNALFORMAT_ALPHA_TYPE')
	public extern static final INTERNALFORMAT_ALPHA_TYPE:Int;
	@:native('GL_INTERNALFORMAT_DEPTH_TYPE')
	public extern static final INTERNALFORMAT_DEPTH_TYPE:Int;
	@:native('GL_INTERNALFORMAT_STENCIL_TYPE')
	public extern static final INTERNALFORMAT_STENCIL_TYPE:Int;
	@:native('GL_MAX_WIDTH')
	public extern static final MAX_WIDTH:Int;
	@:native('GL_MAX_HEIGHT')
	public extern static final MAX_HEIGHT:Int;
	@:native('GL_MAX_DEPTH')
	public extern static final MAX_DEPTH:Int;
	@:native('GL_MAX_LAYERS')
	public extern static final MAX_LAYERS:Int;
	@:native('GL_MAX_COMBINED_DIMENSIONS')
	public extern static final MAX_COMBINED_DIMENSIONS:Int;
	@:native('GL_COLOR_COMPONENTS')
	public extern static final COLOR_COMPONENTS:Int;
	@:native('GL_DEPTH_COMPONENTS')
	public extern static final DEPTH_COMPONENTS:Int;
	@:native('GL_STENCIL_COMPONENTS')
	public extern static final STENCIL_COMPONENTS:Int;
	@:native('GL_COLOR_RENDERABLE')
	public extern static final COLOR_RENDERABLE:Int;
	@:native('GL_DEPTH_RENDERABLE')
	public extern static final DEPTH_RENDERABLE:Int;
	@:native('GL_STENCIL_RENDERABLE')
	public extern static final STENCIL_RENDERABLE:Int;
	@:native('GL_FRAMEBUFFER_RENDERABLE')
	public extern static final FRAMEBUFFER_RENDERABLE:Int;
	@:native('GL_FRAMEBUFFER_RENDERABLE_LAYERED')
	public extern static final FRAMEBUFFER_RENDERABLE_LAYERED:Int;
	@:native('GL_FRAMEBUFFER_BLEND')
	public extern static final FRAMEBUFFER_BLEND:Int;
	@:native('GL_READ_PIXELS')
	public extern static final READ_PIXELS:Int;
	@:native('GL_READ_PIXELS_FORMAT')
	public extern static final READ_PIXELS_FORMAT:Int;
	@:native('GL_READ_PIXELS_TYPE')
	public extern static final READ_PIXELS_TYPE:Int;
	@:native('GL_TEXTURE_IMAGE_FORMAT')
	public extern static final TEXTURE_IMAGE_FORMAT:Int;
	@:native('GL_TEXTURE_IMAGE_TYPE')
	public extern static final TEXTURE_IMAGE_TYPE:Int;
	@:native('GL_GET_TEXTURE_IMAGE_FORMAT')
	public extern static final GET_TEXTURE_IMAGE_FORMAT:Int;
	@:native('GL_GET_TEXTURE_IMAGE_TYPE')
	public extern static final GET_TEXTURE_IMAGE_TYPE:Int;
	@:native('GL_MIPMAP')
	public extern static final MIPMAP:Int;
	@:native('GL_MANUAL_GENERATE_MIPMAP')
	public extern static final MANUAL_GENERATE_MIPMAP:Int;
	@:native('GL_AUTO_GENERATE_MIPMAP')
	public extern static final AUTO_GENERATE_MIPMAP:Int;
	@:native('GL_COLOR_ENCODING')
	public extern static final COLOR_ENCODING:Int;
	@:native('GL_SRGB_READ')
	public extern static final SRGB_READ:Int;
	@:native('GL_SRGB_WRITE')
	public extern static final SRGB_WRITE:Int;
	@:native('GL_FILTER')
	public extern static final FILTER:Int;
	@:native('GL_VERTEX_TEXTURE')
	public extern static final VERTEX_TEXTURE:Int;
	@:native('GL_TESS_CONTROL_TEXTURE')
	public extern static final TESS_CONTROL_TEXTURE:Int;
	@:native('GL_TESS_EVALUATION_TEXTURE')
	public extern static final TESS_EVALUATION_TEXTURE:Int;
	@:native('GL_GEOMETRY_TEXTURE')
	public extern static final GEOMETRY_TEXTURE:Int;
	@:native('GL_FRAGMENT_TEXTURE')
	public extern static final FRAGMENT_TEXTURE:Int;
	@:native('GL_COMPUTE_TEXTURE')
	public extern static final COMPUTE_TEXTURE:Int;
	@:native('GL_TEXTURE_SHADOW')
	public extern static final TEXTURE_SHADOW:Int;
	@:native('GL_TEXTURE_GATHER')
	public extern static final TEXTURE_GATHER:Int;
	@:native('GL_TEXTURE_GATHER_SHADOW')
	public extern static final TEXTURE_GATHER_SHADOW:Int;
	@:native('GL_SHADER_IMAGE_LOAD')
	public extern static final SHADER_IMAGE_LOAD:Int;
	@:native('GL_SHADER_IMAGE_STORE')
	public extern static final SHADER_IMAGE_STORE:Int;
	@:native('GL_SHADER_IMAGE_ATOMIC')
	public extern static final SHADER_IMAGE_ATOMIC:Int;
	@:native('GL_IMAGE_TEXEL_SIZE')
	public extern static final IMAGE_TEXEL_SIZE:Int;
	@:native('GL_IMAGE_COMPATIBILITY_CLASS')
	public extern static final IMAGE_COMPATIBILITY_CLASS:Int;
	@:native('GL_IMAGE_PIXEL_FORMAT')
	public extern static final IMAGE_PIXEL_FORMAT:Int;
	@:native('GL_IMAGE_PIXEL_TYPE')
	public extern static final IMAGE_PIXEL_TYPE:Int;
	@:native('GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST')
	public extern static final SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST:Int;
	@:native('GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST')
	public extern static final SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST:Int;
	@:native('GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE')
	public extern static final SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE:Int;
	@:native('GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE')
	public extern static final SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE:Int;
	@:native('GL_TEXTURE_COMPRESSED_BLOCK_WIDTH')
	public extern static final TEXTURE_COMPRESSED_BLOCK_WIDTH:Int;
	@:native('GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT')
	public extern static final TEXTURE_COMPRESSED_BLOCK_HEIGHT:Int;
	@:native('GL_TEXTURE_COMPRESSED_BLOCK_SIZE')
	public extern static final TEXTURE_COMPRESSED_BLOCK_SIZE:Int;
	@:native('GL_CLEAR_BUFFER')
	public extern static final CLEAR_BUFFER:Int;
	@:native('GL_TEXTURE_VIEW')
	public extern static final TEXTURE_VIEW:Int;
	@:native('GL_VIEW_COMPATIBILITY_CLASS')
	public extern static final VIEW_COMPATIBILITY_CLASS:Int;
	@:native('GL_FULL_SUPPORT')
	public extern static final FULL_SUPPORT:Int;
	@:native('GL_CAVEAT_SUPPORT')
	public extern static final CAVEAT_SUPPORT:Int;
	@:native('GL_IMAGE_CLASS_4_X_32')
	public extern static final IMAGE_CLASS_4_X_32:Int;
	@:native('GL_IMAGE_CLASS_2_X_32')
	public extern static final IMAGE_CLASS_2_X_32:Int;
	@:native('GL_IMAGE_CLASS_1_X_32')
	public extern static final IMAGE_CLASS_1_X_32:Int;
	@:native('GL_IMAGE_CLASS_4_X_16')
	public extern static final IMAGE_CLASS_4_X_16:Int;
	@:native('GL_IMAGE_CLASS_2_X_16')
	public extern static final IMAGE_CLASS_2_X_16:Int;
	@:native('GL_IMAGE_CLASS_1_X_16')
	public extern static final IMAGE_CLASS_1_X_16:Int;
	@:native('GL_IMAGE_CLASS_4_X_8')
	public extern static final IMAGE_CLASS_4_X_8:Int;
	@:native('GL_IMAGE_CLASS_2_X_8')
	public extern static final IMAGE_CLASS_2_X_8:Int;
	@:native('GL_IMAGE_CLASS_1_X_8')
	public extern static final IMAGE_CLASS_1_X_8:Int;
	@:native('GL_IMAGE_CLASS_11_11_10')
	public extern static final IMAGE_CLASS_11_11_10:Int;
	@:native('GL_IMAGE_CLASS_10_10_10_2')
	public extern static final IMAGE_CLASS_10_10_10_2:Int;
	@:native('GL_VIEW_CLASS_128_BITS')
	public extern static final VIEW_CLASS_128_BITS:Int;
	@:native('GL_VIEW_CLASS_96_BITS')
	public extern static final VIEW_CLASS_96_BITS:Int;
	@:native('GL_VIEW_CLASS_64_BITS')
	public extern static final VIEW_CLASS_64_BITS:Int;
	@:native('GL_VIEW_CLASS_48_BITS')
	public extern static final VIEW_CLASS_48_BITS:Int;
	@:native('GL_VIEW_CLASS_32_BITS')
	public extern static final VIEW_CLASS_32_BITS:Int;
	@:native('GL_VIEW_CLASS_24_BITS')
	public extern static final VIEW_CLASS_24_BITS:Int;
	@:native('GL_VIEW_CLASS_16_BITS')
	public extern static final VIEW_CLASS_16_BITS:Int;
	@:native('GL_VIEW_CLASS_8_BITS')
	public extern static final VIEW_CLASS_8_BITS:Int;
	@:native('GL_VIEW_CLASS_S3TC_DXT1_RGB')
	public extern static final VIEW_CLASS_S3TC_DXT1_RGB:Int;
	@:native('GL_VIEW_CLASS_S3TC_DXT1_RGBA')
	public extern static final VIEW_CLASS_S3TC_DXT1_RGBA:Int;
	@:native('GL_VIEW_CLASS_S3TC_DXT3_RGBA')
	public extern static final VIEW_CLASS_S3TC_DXT3_RGBA:Int;
	@:native('GL_VIEW_CLASS_S3TC_DXT5_RGBA')
	public extern static final VIEW_CLASS_S3TC_DXT5_RGBA:Int;
	@:native('GL_VIEW_CLASS_RGTC1_RED')
	public extern static final VIEW_CLASS_RGTC1_RED:Int;
	@:native('GL_VIEW_CLASS_RGTC2_RG')
	public extern static final VIEW_CLASS_RGTC2_RG:Int;
	@:native('GL_VIEW_CLASS_BPTC_UNORM')
	public extern static final VIEW_CLASS_BPTC_UNORM:Int;
	@:native('GL_VIEW_CLASS_BPTC_FLOAT')
	public extern static final VIEW_CLASS_BPTC_FLOAT:Int;
	@:native('GL_UNIFORM')
	public extern static final UNIFORM:Int;
	@:native('GL_UNIFORM_BLOCK')
	public extern static final UNIFORM_BLOCK:Int;
	@:native('GL_PROGRAM_INPUT')
	public extern static final PROGRAM_INPUT:Int;
	@:native('GL_PROGRAM_OUTPUT')
	public extern static final PROGRAM_OUTPUT:Int;
	@:native('GL_BUFFER_VARIABLE')
	public extern static final BUFFER_VARIABLE:Int;
	@:native('GL_SHADER_STORAGE_BLOCK')
	public extern static final SHADER_STORAGE_BLOCK:Int;
	@:native('GL_VERTEX_SUBROUTINE')
	public extern static final VERTEX_SUBROUTINE:Int;
	@:native('GL_TESS_CONTROL_SUBROUTINE')
	public extern static final TESS_CONTROL_SUBROUTINE:Int;
	@:native('GL_TESS_EVALUATION_SUBROUTINE')
	public extern static final TESS_EVALUATION_SUBROUTINE:Int;
	@:native('GL_GEOMETRY_SUBROUTINE')
	public extern static final GEOMETRY_SUBROUTINE:Int;
	@:native('GL_FRAGMENT_SUBROUTINE')
	public extern static final FRAGMENT_SUBROUTINE:Int;
	@:native('GL_COMPUTE_SUBROUTINE')
	public extern static final COMPUTE_SUBROUTINE:Int;
	@:native('GL_VERTEX_SUBROUTINE_UNIFORM')
	public extern static final VERTEX_SUBROUTINE_UNIFORM:Int;
	@:native('GL_TESS_CONTROL_SUBROUTINE_UNIFORM')
	public extern static final TESS_CONTROL_SUBROUTINE_UNIFORM:Int;
	@:native('GL_TESS_EVALUATION_SUBROUTINE_UNIFORM')
	public extern static final TESS_EVALUATION_SUBROUTINE_UNIFORM:Int;
	@:native('GL_GEOMETRY_SUBROUTINE_UNIFORM')
	public extern static final GEOMETRY_SUBROUTINE_UNIFORM:Int;
	@:native('GL_FRAGMENT_SUBROUTINE_UNIFORM')
	public extern static final FRAGMENT_SUBROUTINE_UNIFORM:Int;
	@:native('GL_COMPUTE_SUBROUTINE_UNIFORM')
	public extern static final COMPUTE_SUBROUTINE_UNIFORM:Int;
	@:native('GL_TRANSFORM_FEEDBACK_VARYING')
	public extern static final TRANSFORM_FEEDBACK_VARYING:Int;
	@:native('GL_ACTIVE_RESOURCES')
	public extern static final ACTIVE_RESOURCES:Int;
	@:native('GL_MAX_NAME_LENGTH')
	public extern static final MAX_NAME_LENGTH:Int;
	@:native('GL_MAX_NUM_ACTIVE_VARIABLES')
	public extern static final MAX_NUM_ACTIVE_VARIABLES:Int;
	@:native('GL_MAX_NUM_COMPATIBLE_SUBROUTINES')
	public extern static final MAX_NUM_COMPATIBLE_SUBROUTINES:Int;
	@:native('GL_NAME_LENGTH')
	public extern static final NAME_LENGTH:Int;
	@:native('GL_TYPE')
	public extern static final TYPE:Int;
	@:native('GL_ARRAY_SIZE')
	public extern static final ARRAY_SIZE:Int;
	@:native('GL_OFFSET')
	public extern static final OFFSET:Int;
	@:native('GL_BLOCK_INDEX')
	public extern static final BLOCK_INDEX:Int;
	@:native('GL_ARRAY_STRIDE')
	public extern static final ARRAY_STRIDE:Int;
	@:native('GL_MATRIX_STRIDE')
	public extern static final MATRIX_STRIDE:Int;
	@:native('GL_IS_ROW_MAJOR')
	public extern static final IS_ROW_MAJOR:Int;
	@:native('GL_ATOMIC_COUNTER_BUFFER_INDEX')
	public extern static final ATOMIC_COUNTER_BUFFER_INDEX:Int;
	@:native('GL_BUFFER_BINDING')
	public extern static final BUFFER_BINDING:Int;
	@:native('GL_BUFFER_DATA_SIZE')
	public extern static final BUFFER_DATA_SIZE:Int;
	@:native('GL_NUM_ACTIVE_VARIABLES')
	public extern static final NUM_ACTIVE_VARIABLES:Int;
	@:native('GL_ACTIVE_VARIABLES')
	public extern static final ACTIVE_VARIABLES:Int;
	@:native('GL_REFERENCED_BY_VERTEX_SHADER')
	public extern static final REFERENCED_BY_VERTEX_SHADER:Int;
	@:native('GL_REFERENCED_BY_TESS_CONTROL_SHADER')
	public extern static final REFERENCED_BY_TESS_CONTROL_SHADER:Int;
	@:native('GL_REFERENCED_BY_TESS_EVALUATION_SHADER')
	public extern static final REFERENCED_BY_TESS_EVALUATION_SHADER:Int;
	@:native('GL_REFERENCED_BY_GEOMETRY_SHADER')
	public extern static final REFERENCED_BY_GEOMETRY_SHADER:Int;
	@:native('GL_REFERENCED_BY_FRAGMENT_SHADER')
	public extern static final REFERENCED_BY_FRAGMENT_SHADER:Int;
	@:native('GL_REFERENCED_BY_COMPUTE_SHADER')
	public extern static final REFERENCED_BY_COMPUTE_SHADER:Int;
	@:native('GL_TOP_LEVEL_ARRAY_SIZE')
	public extern static final TOP_LEVEL_ARRAY_SIZE:Int;
	@:native('GL_TOP_LEVEL_ARRAY_STRIDE')
	public extern static final TOP_LEVEL_ARRAY_STRIDE:Int;
	@:native('GL_LOCATION')
	public extern static final LOCATION:Int;
	@:native('GL_LOCATION_INDEX')
	public extern static final LOCATION_INDEX:Int;
	@:native('GL_IS_PER_PATCH')
	public extern static final IS_PER_PATCH:Int;
	@:native('GL_SHADER_STORAGE_BUFFER')
	public extern static final SHADER_STORAGE_BUFFER:Int;
	@:native('GL_SHADER_STORAGE_BUFFER_BINDING')
	public extern static final SHADER_STORAGE_BUFFER_BINDING:Int;
	@:native('GL_SHADER_STORAGE_BUFFER_START')
	public extern static final SHADER_STORAGE_BUFFER_START:Int;
	@:native('GL_SHADER_STORAGE_BUFFER_SIZE')
	public extern static final SHADER_STORAGE_BUFFER_SIZE:Int;
	@:native('GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS')
	public extern static final MAX_VERTEX_SHADER_STORAGE_BLOCKS:Int;
	@:native('GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS')
	public extern static final MAX_GEOMETRY_SHADER_STORAGE_BLOCKS:Int;
	@:native('GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS')
	public extern static final MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS:Int;
	@:native('GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS')
	public extern static final MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS:Int;
	@:native('GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS')
	public extern static final MAX_FRAGMENT_SHADER_STORAGE_BLOCKS:Int;
	@:native('GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS')
	public extern static final MAX_COMPUTE_SHADER_STORAGE_BLOCKS:Int;
	@:native('GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS')
	public extern static final MAX_COMBINED_SHADER_STORAGE_BLOCKS:Int;
	@:native('GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS')
	public extern static final MAX_SHADER_STORAGE_BUFFER_BINDINGS:Int;
	@:native('GL_MAX_SHADER_STORAGE_BLOCK_SIZE')
	public extern static final MAX_SHADER_STORAGE_BLOCK_SIZE:Int;
	@:native('GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT')
	public extern static final SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT:Int;
	@:native('GL_SHADER_STORAGE_BARRIER_BIT')
	public extern static final SHADER_STORAGE_BARRIER_BIT:Int;
	@:native('GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES')
	public extern static final MAX_COMBINED_SHADER_OUTPUT_RESOURCES:Int;
	@:native('GL_DEPTH_STENCIL_TEXTURE_MODE')
	public extern static final DEPTH_STENCIL_TEXTURE_MODE:Int;
	@:native('GL_TEXTURE_BUFFER_OFFSET')
	public extern static final TEXTURE_BUFFER_OFFSET:Int;
	@:native('GL_TEXTURE_BUFFER_SIZE')
	public extern static final TEXTURE_BUFFER_SIZE:Int;
	@:native('GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT')
	public extern static final TEXTURE_BUFFER_OFFSET_ALIGNMENT:Int;
	@:native('GL_TEXTURE_VIEW_MIN_LEVEL')
	public extern static final TEXTURE_VIEW_MIN_LEVEL:Int;
	@:native('GL_TEXTURE_VIEW_NUM_LEVELS')
	public extern static final TEXTURE_VIEW_NUM_LEVELS:Int;
	@:native('GL_TEXTURE_VIEW_MIN_LAYER')
	public extern static final TEXTURE_VIEW_MIN_LAYER:Int;
	@:native('GL_TEXTURE_VIEW_NUM_LAYERS')
	public extern static final TEXTURE_VIEW_NUM_LAYERS:Int;
	@:native('GL_TEXTURE_IMMUTABLE_LEVELS')
	public extern static final TEXTURE_IMMUTABLE_LEVELS:Int;
	@:native('GL_VERTEX_ATTRIB_BINDING')
	public extern static final VERTEX_ATTRIB_BINDING:Int;
	@:native('GL_VERTEX_ATTRIB_RELATIVE_OFFSET')
	public extern static final VERTEX_ATTRIB_RELATIVE_OFFSET:Int;
	@:native('GL_VERTEX_BINDING_DIVISOR')
	public extern static final VERTEX_BINDING_DIVISOR:Int;
	@:native('GL_VERTEX_BINDING_OFFSET')
	public extern static final VERTEX_BINDING_OFFSET:Int;
	@:native('GL_VERTEX_BINDING_STRIDE')
	public extern static final VERTEX_BINDING_STRIDE:Int;
	@:native('GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET')
	public extern static final MAX_VERTEX_ATTRIB_RELATIVE_OFFSET:Int;
	@:native('GL_MAX_VERTEX_ATTRIB_BINDINGS')
	public extern static final MAX_VERTEX_ATTRIB_BINDINGS:Int;
	@:native('GL_VERTEX_BINDING_BUFFER')
	public extern static final VERTEX_BINDING_BUFFER:Int;
	@:native('GL_DISPLAY_LIST')
	public extern static final DISPLAY_LIST:Int;
	@:native('GL_STACK_UNDERFLOW')
	public extern static final STACK_UNDERFLOW:Int;
	@:native('GL_STACK_OVERFLOW')
	public extern static final STACK_OVERFLOW:Int;
	@:native('GL_MAX_VERTEX_ATTRIB_STRIDE')
	public extern static final MAX_VERTEX_ATTRIB_STRIDE:Int;
	@:native('GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED')
	public extern static final PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED:Int;
	@:native('GL_TEXTURE_BUFFER_BINDING')
	public extern static final TEXTURE_BUFFER_BINDING:Int;
	@:native('GL_MAP_PERSISTENT_BIT')
	public extern static final MAP_PERSISTENT_BIT:Int;
	@:native('GL_MAP_COHERENT_BIT')
	public extern static final MAP_COHERENT_BIT:Int;
	@:native('GL_DYNAMIC_STORAGE_BIT')
	public extern static final DYNAMIC_STORAGE_BIT:Int;
	@:native('GL_CLIENT_STORAGE_BIT')
	public extern static final CLIENT_STORAGE_BIT:Int;
	@:native('GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT')
	public extern static final CLIENT_MAPPED_BUFFER_BARRIER_BIT:Int;
	@:native('GL_BUFFER_IMMUTABLE_STORAGE')
	public extern static final BUFFER_IMMUTABLE_STORAGE:Int;
	@:native('GL_BUFFER_STORAGE_FLAGS')
	public extern static final BUFFER_STORAGE_FLAGS:Int;
	@:native('GL_CLEAR_TEXTURE')
	public extern static final CLEAR_TEXTURE:Int;
	@:native('GL_LOCATION_COMPONENT')
	public extern static final LOCATION_COMPONENT:Int;
	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_INDEX')
	public extern static final TRANSFORM_FEEDBACK_BUFFER_INDEX:Int;
	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE')
	public extern static final TRANSFORM_FEEDBACK_BUFFER_STRIDE:Int;
	@:native('GL_QUERY_BUFFER')
	public extern static final QUERY_BUFFER:Int;
	@:native('GL_QUERY_BUFFER_BARRIER_BIT')
	public extern static final QUERY_BUFFER_BARRIER_BIT:Int;
	@:native('GL_QUERY_BUFFER_BINDING')
	public extern static final QUERY_BUFFER_BINDING:Int;
	@:native('GL_QUERY_RESULT_NO_WAIT')
	public extern static final QUERY_RESULT_NO_WAIT:Int;
	@:native('GL_MIRROR_CLAMP_TO_EDGE')
	public extern static final MIRROR_CLAMP_TO_EDGE:Int;
	@:native('GL_CONTEXT_LOST')
	public extern static final CONTEXT_LOST:Int;
	@:native('GL_NEGATIVE_ONE_TO_ONE')
	public extern static final NEGATIVE_ONE_TO_ONE:Int;
	@:native('GL_ZERO_TO_ONE')
	public extern static final ZERO_TO_ONE:Int;
	@:native('GL_CLIP_ORIGIN')
	public extern static final CLIP_ORIGIN:Int;
	@:native('GL_CLIP_DEPTH_MODE')
	public extern static final CLIP_DEPTH_MODE:Int;
	@:native('GL_QUERY_WAIT_INVERTED')
	public extern static final QUERY_WAIT_INVERTED:Int;
	@:native('GL_QUERY_NO_WAIT_INVERTED')
	public extern static final QUERY_NO_WAIT_INVERTED:Int;
	@:native('GL_QUERY_BY_REGION_WAIT_INVERTED')
	public extern static final QUERY_BY_REGION_WAIT_INVERTED:Int;
	@:native('GL_QUERY_BY_REGION_NO_WAIT_INVERTED')
	public extern static final QUERY_BY_REGION_NO_WAIT_INVERTED:Int;
	@:native('GL_MAX_CULL_DISTANCES')
	public extern static final MAX_CULL_DISTANCES:Int;
	@:native('GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES')
	public extern static final MAX_COMBINED_CLIP_AND_CULL_DISTANCES:Int;
	@:native('GL_TEXTURE_TARGET')
	public extern static final TEXTURE_TARGET:Int;
	@:native('GL_QUERY_TARGET')
	public extern static final QUERY_TARGET:Int;
	@:native('GL_GUILTY_CONTEXT_RESET')
	public extern static final GUILTY_CONTEXT_RESET:Int;
	@:native('GL_INNOCENT_CONTEXT_RESET')
	public extern static final INNOCENT_CONTEXT_RESET:Int;
	@:native('GL_UNKNOWN_CONTEXT_RESET')
	public extern static final UNKNOWN_CONTEXT_RESET:Int;
	@:native('GL_RESET_NOTIFICATION_STRATEGY')
	public extern static final RESET_NOTIFICATION_STRATEGY:Int;
	@:native('GL_LOSE_CONTEXT_ON_RESET')
	public extern static final LOSE_CONTEXT_ON_RESET:Int;
	@:native('GL_NO_RESET_NOTIFICATION')
	public extern static final NO_RESET_NOTIFICATION:Int;
	@:native('GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT')
	public extern static final CONTEXT_FLAG_ROBUST_ACCESS_BIT:Int;
	@:native('GL_COLOR_TABLE')
	public extern static final COLOR_TABLE:Int;
	@:native('GL_POST_CONVOLUTION_COLOR_TABLE')
	public extern static final POST_CONVOLUTION_COLOR_TABLE:Int;
	@:native('GL_POST_COLOR_MATRIX_COLOR_TABLE')
	public extern static final POST_COLOR_MATRIX_COLOR_TABLE:Int;
	@:native('GL_PROXY_COLOR_TABLE')
	public extern static final PROXY_COLOR_TABLE:Int;
	@:native('GL_PROXY_POST_CONVOLUTION_COLOR_TABLE')
	public extern static final PROXY_POST_CONVOLUTION_COLOR_TABLE:Int;
	@:native('GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE')
	public extern static final PROXY_POST_COLOR_MATRIX_COLOR_TABLE:Int;
	@:native('GL_CONVOLUTION_1D')
	public extern static final CONVOLUTION_1D:Int;
	@:native('GL_CONVOLUTION_2D')
	public extern static final CONVOLUTION_2D:Int;
	@:native('GL_SEPARABLE_2D')
	public extern static final SEPARABLE_2D:Int;
	@:native('GL_HISTOGRAM')
	public extern static final HISTOGRAM:Int;
	@:native('GL_PROXY_HISTOGRAM')
	public extern static final PROXY_HISTOGRAM:Int;
	@:native('GL_MINMAX')
	public extern static final MINMAX:Int;
	@:native('GL_CONTEXT_RELEASE_BEHAVIOR')
	public extern static final CONTEXT_RELEASE_BEHAVIOR:Int;
	@:native('GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH')
	public extern static final CONTEXT_RELEASE_BEHAVIOR_FLUSH:Int;
	@:native('GL_SHADER_BINARY_FORMAT_SPIR_V')
	public extern static final SHADER_BINARY_FORMAT_SPIR_V:Int;
	@:native('GL_SPIR_V_BINARY')
	public extern static final SPIR_V_BINARY:Int;
	@:native('GL_PARAMETER_BUFFER')
	public extern static final PARAMETER_BUFFER:Int;
	@:native('GL_PARAMETER_BUFFER_BINDING')
	public extern static final PARAMETER_BUFFER_BINDING:Int;
	@:native('GL_CONTEXT_FLAG_NO_ERROR_BIT')
	public extern static final CONTEXT_FLAG_NO_ERROR_BIT:Int;
	@:native('GL_VERTICES_SUBMITTED')
	public extern static final VERTICES_SUBMITTED:Int;
	@:native('GL_PRIMITIVES_SUBMITTED')
	public extern static final PRIMITIVES_SUBMITTED:Int;
	@:native('GL_VERTEX_SHADER_INVOCATIONS')
	public extern static final VERTEX_SHADER_INVOCATIONS:Int;
	@:native('GL_TESS_CONTROL_SHADER_PATCHES')
	public extern static final TESS_CONTROL_SHADER_PATCHES:Int;
	@:native('GL_TESS_EVALUATION_SHADER_INVOCATIONS')
	public extern static final TESS_EVALUATION_SHADER_INVOCATIONS:Int;
	@:native('GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED')
	public extern static final GEOMETRY_SHADER_PRIMITIVES_EMITTED:Int;
	@:native('GL_FRAGMENT_SHADER_INVOCATIONS')
	public extern static final FRAGMENT_SHADER_INVOCATIONS:Int;
	@:native('GL_COMPUTE_SHADER_INVOCATIONS')
	public extern static final COMPUTE_SHADER_INVOCATIONS:Int;
	@:native('GL_CLIPPING_INPUT_PRIMITIVES')
	public extern static final CLIPPING_INPUT_PRIMITIVES:Int;
	@:native('GL_CLIPPING_OUTPUT_PRIMITIVES')
	public extern static final CLIPPING_OUTPUT_PRIMITIVES:Int;
	@:native('GL_POLYGON_OFFSET_CLAMP')
	public extern static final POLYGON_OFFSET_CLAMP:Int;
	@:native('GL_SPIR_V_EXTENSIONS')
	public extern static final SPIR_V_EXTENSIONS:Int;
	@:native('GL_NUM_SPIR_V_EXTENSIONS')
	public extern static final NUM_SPIR_V_EXTENSIONS:Int;
	@:native('GL_TEXTURE_MAX_ANISOTROPY')
	public extern static final TEXTURE_MAX_ANISOTROPY:Int;
	@:native('GL_MAX_TEXTURE_MAX_ANISOTROPY')
	public extern static final MAX_TEXTURE_MAX_ANISOTROPY:Int;
	@:native('GL_TRANSFORM_FEEDBACK_OVERFLOW')
	public extern static final TRANSFORM_FEEDBACK_OVERFLOW:Int;
	@:native('GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW')
	public extern static final TRANSFORM_FEEDBACK_STREAM_OVERFLOW:Int;
	@:native('GL_VERSION_ES_CL_1_0')
	public extern static final VERSION_ES_CL_1_0:Int;
	@:native('GL_VERSION_ES_CM_1_1')
	public extern static final VERSION_ES_CM_1_1:Int;
	@:native('GL_VERSION_ES_CL_1_1')
	public extern static final VERSION_ES_CL_1_1:Int;
	@:native('GL_CLIP_PLANE0')
	public extern static final CLIP_PLANE0:Int;
	@:native('GL_CLIP_PLANE1')
	public extern static final CLIP_PLANE1:Int;
	@:native('GL_CLIP_PLANE2')
	public extern static final CLIP_PLANE2:Int;
	@:native('GL_CLIP_PLANE3')
	public extern static final CLIP_PLANE3:Int;
	@:native('GL_CLIP_PLANE4')
	public extern static final CLIP_PLANE4:Int;
	@:native('GL_CLIP_PLANE5')
	public extern static final CLIP_PLANE5:Int;
	@:native('GL_FOG')
	public extern static final FOG:Int;
	@:native('GL_LIGHTING')
	public extern static final LIGHTING:Int;
	@:native('GL_ALPHA_TEST')
	public extern static final ALPHA_TEST:Int;
	@:native('GL_POINT_SMOOTH')
	public extern static final POINT_SMOOTH:Int;
	@:native('GL_COLOR_MATERIAL')
	public extern static final COLOR_MATERIAL:Int;
	@:native('GL_NORMALIZE')
	public extern static final NORMALIZE:Int;
	@:native('GL_RESCALE_NORMAL')
	public extern static final RESCALE_NORMAL:Int;
	@:native('GL_NORMAL_ARRAY')
	public extern static final NORMAL_ARRAY:Int;
	@:native('GL_COLOR_ARRAY')
	public extern static final COLOR_ARRAY:Int;
	@:native('GL_TEXTURE_COORD_ARRAY')
	public extern static final TEXTURE_COORD_ARRAY:Int;
	@:native('GL_EXP')
	public extern static final EXP:Int;
	@:native('GL_EXP2')
	public extern static final EXP2:Int;
	@:native('GL_FOG_DENSITY')
	public extern static final FOG_DENSITY:Int;
	@:native('GL_FOG_START')
	public extern static final FOG_START:Int;
	@:native('GL_FOG_END')
	public extern static final FOG_END:Int;
	@:native('GL_FOG_MODE')
	public extern static final FOG_MODE:Int;
	@:native('GL_FOG_COLOR')
	public extern static final FOG_COLOR:Int;
	@:native('GL_CURRENT_COLOR')
	public extern static final CURRENT_COLOR:Int;
	@:native('GL_CURRENT_NORMAL')
	public extern static final CURRENT_NORMAL:Int;
	@:native('GL_CURRENT_TEXTURE_COORDS')
	public extern static final CURRENT_TEXTURE_COORDS:Int;
	@:native('GL_POINT_SIZE_MIN')
	public extern static final POINT_SIZE_MIN:Int;
	@:native('GL_POINT_SIZE_MAX')
	public extern static final POINT_SIZE_MAX:Int;
	@:native('GL_POINT_DISTANCE_ATTENUATION')
	public extern static final POINT_DISTANCE_ATTENUATION:Int;
	@:native('GL_ALIASED_POINT_SIZE_RANGE')
	public extern static final ALIASED_POINT_SIZE_RANGE:Int;
	@:native('GL_SHADE_MODEL')
	public extern static final SHADE_MODEL:Int;
	@:native('GL_MATRIX_MODE')
	public extern static final MATRIX_MODE:Int;
	@:native('GL_MODELVIEW_STACK_DEPTH')
	public extern static final MODELVIEW_STACK_DEPTH:Int;
	@:native('GL_PROJECTION_STACK_DEPTH')
	public extern static final PROJECTION_STACK_DEPTH:Int;
	@:native('GL_TEXTURE_STACK_DEPTH')
	public extern static final TEXTURE_STACK_DEPTH:Int;
	@:native('GL_MODELVIEW_MATRIX')
	public extern static final MODELVIEW_MATRIX:Int;
	@:native('GL_PROJECTION_MATRIX')
	public extern static final PROJECTION_MATRIX:Int;
	@:native('GL_TEXTURE_MATRIX')
	public extern static final TEXTURE_MATRIX:Int;
	@:native('GL_ALPHA_TEST_FUNC')
	public extern static final ALPHA_TEST_FUNC:Int;
	@:native('GL_ALPHA_TEST_REF')
	public extern static final ALPHA_TEST_REF:Int;
	@:native('GL_MAX_LIGHTS')
	public extern static final MAX_LIGHTS:Int;
	@:native('GL_MAX_CLIP_PLANES')
	public extern static final MAX_CLIP_PLANES:Int;
	@:native('GL_MAX_MODELVIEW_STACK_DEPTH')
	public extern static final MAX_MODELVIEW_STACK_DEPTH:Int;
	@:native('GL_MAX_PROJECTION_STACK_DEPTH')
	public extern static final MAX_PROJECTION_STACK_DEPTH:Int;
	@:native('GL_MAX_TEXTURE_STACK_DEPTH')
	public extern static final MAX_TEXTURE_STACK_DEPTH:Int;
	@:native('GL_MAX_TEXTURE_UNITS')
	public extern static final MAX_TEXTURE_UNITS:Int;
	@:native('GL_RED_BITS')
	public extern static final RED_BITS:Int;
	@:native('GL_GREEN_BITS')
	public extern static final GREEN_BITS:Int;
	@:native('GL_BLUE_BITS')
	public extern static final BLUE_BITS:Int;
	@:native('GL_ALPHA_BITS')
	public extern static final ALPHA_BITS:Int;
	@:native('GL_DEPTH_BITS')
	public extern static final DEPTH_BITS:Int;
	@:native('GL_STENCIL_BITS')
	public extern static final STENCIL_BITS:Int;
	@:native('GL_VERTEX_ARRAY_SIZE')
	public extern static final VERTEX_ARRAY_SIZE:Int;
	@:native('GL_VERTEX_ARRAY_TYPE')
	public extern static final VERTEX_ARRAY_TYPE:Int;
	@:native('GL_VERTEX_ARRAY_STRIDE')
	public extern static final VERTEX_ARRAY_STRIDE:Int;
	@:native('GL_NORMAL_ARRAY_TYPE')
	public extern static final NORMAL_ARRAY_TYPE:Int;
	@:native('GL_NORMAL_ARRAY_STRIDE')
	public extern static final NORMAL_ARRAY_STRIDE:Int;
	@:native('GL_COLOR_ARRAY_SIZE')
	public extern static final COLOR_ARRAY_SIZE:Int;
	@:native('GL_COLOR_ARRAY_TYPE')
	public extern static final COLOR_ARRAY_TYPE:Int;
	@:native('GL_COLOR_ARRAY_STRIDE')
	public extern static final COLOR_ARRAY_STRIDE:Int;
	@:native('GL_TEXTURE_COORD_ARRAY_SIZE')
	public extern static final TEXTURE_COORD_ARRAY_SIZE:Int;
	@:native('GL_TEXTURE_COORD_ARRAY_TYPE')
	public extern static final TEXTURE_COORD_ARRAY_TYPE:Int;
	@:native('GL_TEXTURE_COORD_ARRAY_STRIDE')
	public extern static final TEXTURE_COORD_ARRAY_STRIDE:Int;
	@:native('GL_VERTEX_ARRAY_POINTER')
	public extern static final VERTEX_ARRAY_POINTER:Int;
	@:native('GL_NORMAL_ARRAY_POINTER')
	public extern static final NORMAL_ARRAY_POINTER:Int;
	@:native('GL_COLOR_ARRAY_POINTER')
	public extern static final COLOR_ARRAY_POINTER:Int;
	@:native('GL_TEXTURE_COORD_ARRAY_POINTER')
	public extern static final TEXTURE_COORD_ARRAY_POINTER:Int;
	@:native('GL_PERSPECTIVE_CORRECTION_HINT')
	public extern static final PERSPECTIVE_CORRECTION_HINT:Int;
	@:native('GL_POINT_SMOOTH_HINT')
	public extern static final POINT_SMOOTH_HINT:Int;
	@:native('GL_FOG_HINT')
	public extern static final FOG_HINT:Int;
	@:native('GL_GENERATE_MIPMAP_HINT')
	public extern static final GENERATE_MIPMAP_HINT:Int;
	@:native('GL_LIGHT_MODEL_AMBIENT')
	public extern static final LIGHT_MODEL_AMBIENT:Int;
	@:native('GL_LIGHT_MODEL_TWO_SIDE')
	public extern static final LIGHT_MODEL_TWO_SIDE:Int;
	@:native('GL_AMBIENT')
	public extern static final AMBIENT:Int;
	@:native('GL_DIFFUSE')
	public extern static final DIFFUSE:Int;
	@:native('GL_SPECULAR')
	public extern static final SPECULAR:Int;
	@:native('GL_POSITION')
	public extern static final POSITION:Int;
	@:native('GL_SPOT_DIRECTION')
	public extern static final SPOT_DIRECTION:Int;
	@:native('GL_SPOT_EXPONENT')
	public extern static final SPOT_EXPONENT:Int;
	@:native('GL_SPOT_CUTOFF')
	public extern static final SPOT_CUTOFF:Int;
	@:native('GL_CONSTANT_ATTENUATION')
	public extern static final CONSTANT_ATTENUATION:Int;
	@:native('GL_LINEAR_ATTENUATION')
	public extern static final LINEAR_ATTENUATION:Int;
	@:native('GL_QUADRATIC_ATTENUATION')
	public extern static final QUADRATIC_ATTENUATION:Int;
	@:native('GL_EMISSION')
	public extern static final EMISSION:Int;
	@:native('GL_SHININESS')
	public extern static final SHININESS:Int;
	@:native('GL_AMBIENT_AND_DIFFUSE')
	public extern static final AMBIENT_AND_DIFFUSE:Int;
	@:native('GL_MODELVIEW')
	public extern static final MODELVIEW:Int;
	@:native('GL_PROJECTION')
	public extern static final PROJECTION:Int;
	@:native('GL_LUMINANCE')
	public extern static final LUMINANCE:Int;
	@:native('GL_LUMINANCE_ALPHA')
	public extern static final LUMINANCE_ALPHA:Int;
	@:native('GL_FLAT')
	public extern static final FLAT:Int;
	@:native('GL_SMOOTH')
	public extern static final SMOOTH:Int;
	@:native('GL_MODULATE')
	public extern static final MODULATE:Int;
	@:native('GL_DECAL')
	public extern static final DECAL:Int;
	@:native('GL_ADD')
	public extern static final ADD:Int;
	@:native('GL_TEXTURE_ENV_MODE')
	public extern static final TEXTURE_ENV_MODE:Int;
	@:native('GL_TEXTURE_ENV_COLOR')
	public extern static final TEXTURE_ENV_COLOR:Int;
	@:native('GL_TEXTURE_ENV')
	public extern static final TEXTURE_ENV:Int;
	@:native('GL_GENERATE_MIPMAP')
	public extern static final GENERATE_MIPMAP:Int;
	@:native('GL_CLIENT_ACTIVE_TEXTURE')
	public extern static final CLIENT_ACTIVE_TEXTURE:Int;
	@:native('GL_LIGHT0')
	public extern static final LIGHT0:Int;
	@:native('GL_LIGHT1')
	public extern static final LIGHT1:Int;
	@:native('GL_LIGHT2')
	public extern static final LIGHT2:Int;
	@:native('GL_LIGHT3')
	public extern static final LIGHT3:Int;
	@:native('GL_LIGHT4')
	public extern static final LIGHT4:Int;
	@:native('GL_LIGHT5')
	public extern static final LIGHT5:Int;
	@:native('GL_LIGHT6')
	public extern static final LIGHT6:Int;
	@:native('GL_LIGHT7')
	public extern static final LIGHT7:Int;
	@:native('GL_VERTEX_ARRAY_BUFFER_BINDING')
	public extern static final VERTEX_ARRAY_BUFFER_BINDING:Int;
	@:native('GL_NORMAL_ARRAY_BUFFER_BINDING')
	public extern static final NORMAL_ARRAY_BUFFER_BINDING:Int;
	@:native('GL_COLOR_ARRAY_BUFFER_BINDING')
	public extern static final COLOR_ARRAY_BUFFER_BINDING:Int;
	@:native('GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING')
	public extern static final TEXTURE_COORD_ARRAY_BUFFER_BINDING:Int;
	@:native('GL_SUBTRACT')
	public extern static final SUBTRACT:Int;
	@:native('GL_COMBINE')
	public extern static final COMBINE:Int;
	@:native('GL_COMBINE_RGB')
	public extern static final COMBINE_RGB:Int;
	@:native('GL_COMBINE_ALPHA')
	public extern static final COMBINE_ALPHA:Int;
	@:native('GL_RGB_SCALE')
	public extern static final RGB_SCALE:Int;
	@:native('GL_ADD_SIGNED')
	public extern static final ADD_SIGNED:Int;
	@:native('GL_INTERPOLATE')
	public extern static final INTERPOLATE:Int;
	@:native('GL_CONSTANT')
	public extern static final CONSTANT:Int;
	@:native('GL_PRIMARY_COLOR')
	public extern static final PRIMARY_COLOR:Int;
	@:native('GL_PREVIOUS')
	public extern static final PREVIOUS:Int;
	@:native('GL_OPERAND0_RGB')
	public extern static final OPERAND0_RGB:Int;
	@:native('GL_OPERAND1_RGB')
	public extern static final OPERAND1_RGB:Int;
	@:native('GL_OPERAND2_RGB')
	public extern static final OPERAND2_RGB:Int;
	@:native('GL_OPERAND0_ALPHA')
	public extern static final OPERAND0_ALPHA:Int;
	@:native('GL_OPERAND1_ALPHA')
	public extern static final OPERAND1_ALPHA:Int;
	@:native('GL_OPERAND2_ALPHA')
	public extern static final OPERAND2_ALPHA:Int;
	@:native('GL_ALPHA_SCALE')
	public extern static final ALPHA_SCALE:Int;
	@:native('GL_SRC0_RGB')
	public extern static final SRC0_RGB:Int;
	@:native('GL_SRC1_RGB')
	public extern static final SRC1_RGB:Int;
	@:native('GL_SRC2_RGB')
	public extern static final SRC2_RGB:Int;
	@:native('GL_SRC0_ALPHA')
	public extern static final SRC0_ALPHA:Int;
	@:native('GL_SRC2_ALPHA')
	public extern static final SRC2_ALPHA:Int;
	@:native('GL_DOT3_RGB')
	public extern static final DOT3_RGB:Int;
	@:native('GL_DOT3_RGBA')
	public extern static final DOT3_RGBA:Int;
	@:native('GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS')
	public extern static final FRAMEBUFFER_INCOMPLETE_DIMENSIONS:Int;
	@:native('GL_MULTISAMPLE_LINE_WIDTH_RANGE')
	public extern static final MULTISAMPLE_LINE_WIDTH_RANGE:Int;
	@:native('GL_MULTISAMPLE_LINE_WIDTH_GRANULARITY')
	public extern static final MULTISAMPLE_LINE_WIDTH_GRANULARITY:Int;
	@:native('GL_MULTIPLY')
	public extern static final MULTIPLY:Int;
	@:native('GL_SCREEN')
	public extern static final SCREEN:Int;
	@:native('GL_OVERLAY')
	public extern static final OVERLAY:Int;
	@:native('GL_DARKEN')
	public extern static final DARKEN:Int;
	@:native('GL_LIGHTEN')
	public extern static final LIGHTEN:Int;
	@:native('GL_COLORDODGE')
	public extern static final COLORDODGE:Int;
	@:native('GL_COLORBURN')
	public extern static final COLORBURN:Int;
	@:native('GL_HARDLIGHT')
	public extern static final HARDLIGHT:Int;
	@:native('GL_SOFTLIGHT')
	public extern static final SOFTLIGHT:Int;
	@:native('GL_DIFFERENCE')
	public extern static final DIFFERENCE:Int;
	@:native('GL_EXCLUSION')
	public extern static final EXCLUSION:Int;
	@:native('GL_HSL_HUE')
	public extern static final HSL_HUE:Int;
	@:native('GL_HSL_SATURATION')
	public extern static final HSL_SATURATION:Int;
	@:native('GL_HSL_COLOR')
	public extern static final HSL_COLOR:Int;
	@:native('GL_HSL_LUMINOSITY')
	public extern static final HSL_LUMINOSITY:Int;
	@:native('GL_PRIMITIVE_BOUNDING_BOX')
	public extern static final PRIMITIVE_BOUNDING_BOX:Int;
	@:native('GL_COMPRESSED_RGBA_ASTC_4x4')
	public extern static final COMPRESSED_RGBA_ASTC_4x4:Int;
	@:native('GL_COMPRESSED_RGBA_ASTC_5x4')
	public extern static final COMPRESSED_RGBA_ASTC_5x4:Int;
	@:native('GL_COMPRESSED_RGBA_ASTC_5x5')
	public extern static final COMPRESSED_RGBA_ASTC_5x5:Int;
	@:native('GL_COMPRESSED_RGBA_ASTC_6x5')
	public extern static final COMPRESSED_RGBA_ASTC_6x5:Int;
	@:native('GL_COMPRESSED_RGBA_ASTC_6x6')
	public extern static final COMPRESSED_RGBA_ASTC_6x6:Int;
	@:native('GL_COMPRESSED_RGBA_ASTC_8x5')
	public extern static final COMPRESSED_RGBA_ASTC_8x5:Int;
	@:native('GL_COMPRESSED_RGBA_ASTC_8x6')
	public extern static final COMPRESSED_RGBA_ASTC_8x6:Int;
	@:native('GL_COMPRESSED_RGBA_ASTC_8x8')
	public extern static final COMPRESSED_RGBA_ASTC_8x8:Int;
	@:native('GL_COMPRESSED_RGBA_ASTC_10x5')
	public extern static final COMPRESSED_RGBA_ASTC_10x5:Int;
	@:native('GL_COMPRESSED_RGBA_ASTC_10x6')
	public extern static final COMPRESSED_RGBA_ASTC_10x6:Int;
	@:native('GL_COMPRESSED_RGBA_ASTC_10x8')
	public extern static final COMPRESSED_RGBA_ASTC_10x8:Int;
	@:native('GL_COMPRESSED_RGBA_ASTC_10x10')
	public extern static final COMPRESSED_RGBA_ASTC_10x10:Int;
	@:native('GL_COMPRESSED_RGBA_ASTC_12x10')
	public extern static final COMPRESSED_RGBA_ASTC_12x10:Int;
	@:native('GL_COMPRESSED_RGBA_ASTC_12x12')
	public extern static final COMPRESSED_RGBA_ASTC_12x12:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ASTC_4x4:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ASTC_5x4:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ASTC_5x5:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ASTC_6x5:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ASTC_6x6:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ASTC_8x5:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ASTC_8x6:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ASTC_8x8:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ASTC_10x5:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ASTC_10x6:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ASTC_10x8:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ASTC_10x10:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ASTC_12x10:Int;
	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12')
	public extern static final COMPRESSED_SRGB8_ALPHA8_ASTC_12x12:Int;
	@:native('GL_CONTEXT_ROBUST_ACCESS')
	public extern static final CONTEXT_ROBUST_ACCESS:Int;

    // Functions //

    @:native('glCullFace')
	public extern static function cullFace(mode:GLEnum):Void;

	@:native('glFrontFace')
	public extern static function frontFace(mode:GLEnum):Void;

	@:native('glHint')
	public extern static function hint(target:GLEnum, mode:GLEnum):Void;

	@:native('glLineWidth')
	public extern static function lineWidth(width:GLFloat):Void;

	@:native('glPointSize')
	public extern static function pointSize(size:GLFloat):Void;

	@:native('glPolygonMode')
	public extern static function polygonMode(face:GLEnum, mode:GLEnum):Void;

	@:native('glScissor')
	public extern static function scissor(x:GLInt, y:GLInt, width:GLSizeI, height:GLSizeI):Void;

	@:native('glTexParameterf')
	public extern static function texParameterf(target:GLEnum, pname:GLEnum, param:GLFloat):Void;

	@:native('glTexParameterfv')
	public extern static function texParameterfv(target:GLEnum, pname:GLEnum, params:ConstPtr<GLFloat>):Void;

	@:native('glTexParameteri')
	public extern static function texParameteri(target:GLEnum, pname:GLEnum, param:GLInt):Void;

	@:native('glTexParameteriv')
	public extern static function texParameteriv(target:GLEnum, pname:GLEnum, params:ConstPtr<GLInt>):Void;

	@:native('glTexImage1D')
	public extern static function texImage1D(target:GLEnum, level:GLInt, internalformat:GLInt, width:GLSizeI, border:GLInt, format:GLEnum, type:GLEnum, pixels:ConstPtr<Void>):Void;

	@:native('glTexImage2D')
	public extern static function texImage2D(target:GLEnum, level:GLInt, internalformat:GLInt, width:GLSizeI, height:GLSizeI, border:GLInt, format:GLEnum, type:GLEnum, pixels:ConstPtr<Void>):Void;

	@:native('glDrawBuffer')
	public extern static function drawBuffer(buf:GLEnum):Void;

	@:native('glClear')
	public extern static function clear(mask:GLBitField):Void;

	@:native('glClearColor')
	public extern static function clearColor(red:GLFloat, green:GLFloat, blue:GLFloat, alpha:GLFloat):Void;

	@:native('glClearStencil')
	public extern static function clearStencil(s:GLInt):Void;

	@:native('glClearDepth')
	public extern static function clearDepth(depth:GLDouble):Void;

	@:native('glStencilMask')
	public extern static function stencilMask(mask:GLUInt):Void;

	@:native('glColorMask')
	public extern static function colorMask(red:GLBool, green:GLBool, blue:GLBool, alpha:GLBool):Void;

	@:native('glDepthMask')
	public extern static function depthMask(flag:GLBool):Void;

	@:native('glDisable')
	public extern static function disable(cap:GLEnum):Void;

	@:native('glEnable')
	public extern static function enable(cap:GLEnum):Void;

	@:native('glFinish')
	public extern static function finish():Void;

	@:native('glFlush')
	public extern static function flush():Void;

	@:native('glBlendFunc')
	public extern static function blendFunc(sfactor:GLEnum, dfactor:GLEnum):Void;

	@:native('glLogicOp')
	public extern static function logicOp(opcode:GLEnum):Void;

	@:native('glStencilFunc')
	public extern static function stencilFunc(func:GLEnum, ref:GLInt, mask:GLUInt):Void;

	@:native('glStencilOp')
	public extern static function stencilOp(fail:GLEnum, zfail:GLEnum, zpass:GLEnum):Void;

	@:native('glDepthFunc')
	public extern static function depthFunc(func:GLEnum):Void;

	@:native('glPixelStoref')
	public extern static function pixelStoref(pname:GLEnum, param:GLFloat):Void;

	@:native('glPixelStorei')
	public extern static function pixelStorei(pname:GLEnum, param:GLInt):Void;

	@:native('glReadBuffer')
	public extern static function readBuffer(src:GLEnum):Void;

	@:native('glReadPixels')
	public extern static function readPixels(x:GLInt, y:GLInt, width:GLSizeI, height:GLSizeI, format:GLEnum, type:GLEnum, pixels:Ptr<Void>):Void;

	@:native('glGetBooleanv')
	public extern static function getBooleanv(pname:GLEnum, data:Ptr<GLBool>):Void;

	@:native('glGetDoublev')
	public extern static function getDoublev(pname:GLEnum, data:Ptr<GLDouble>):Void;

	@:native('glGetError')
	public extern static function getError():GLEnum;

	@:native('glGetFloatv')
	public extern static function getFloatv(pname:GLEnum, data:Ptr<GLFloat>):Void;

	@:native('glGetIntegerv')
	public extern static function getIntegerv(pname:GLEnum, data:Ptr<GLInt>):Void;

	@:native('glGetString')
	public extern static function getString(name:GLEnum):ConstPtr<GLUByte>;

	@:native('glGetTexImage')
	public extern static function getTexImage(target:GLEnum, level:GLInt, format:GLEnum, type:GLEnum, pixels:Ptr<Void>):Void;

	@:native('glGetTexParameterfv')
	public extern static function getTexParameterfv(target:GLEnum, pname:GLEnum, params:Ptr<GLFloat>):Void;

	@:native('glGetTexParameteriv')
	public extern static function getTexParameteriv(target:GLEnum, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetTexLevelParameterfv')
	public extern static function getTexLevelParameterfv(target:GLEnum, level:GLInt, pname:GLEnum, params:Ptr<GLFloat>):Void;

	@:native('glGetTexLevelParameteriv')
	public extern static function getTexLevelParameteriv(target:GLEnum, level:GLInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glIsEnabled')
	public extern static function isEnabled(cap:GLEnum):GLBool;

	@:native('glDepthRange')
	public extern static function depthRange(n:GLDouble, f:GLDouble):Void;

	@:native('glViewport')
	public extern static function viewport(x:GLInt, y:GLInt, width:GLSizeI, height:GLSizeI):Void;

	@:native('glDrawArrays')
	public extern static function drawArrays(mode:GLEnum, first:GLInt, count:GLSizeI):Void;

	@:native('glDrawElements')
	public extern static function drawElements(mode:GLEnum, count:GLSizeI, type:GLEnum, indices:ConstPtr<Void>):Void;

	@:native('glPolygonOffset')
	public extern static function polygonOffset(factor:GLFloat, units:GLFloat):Void;

	@:native('glCopyTexImage1D')
	public extern static function copyTexImage1D(target:GLEnum, level:GLInt, internalformat:GLEnum, x:GLInt, y:GLInt, width:GLSizeI, border:GLInt):Void;

	@:native('glCopyTexImage2D')
	public extern static function copyTexImage2D(target:GLEnum, level:GLInt, internalformat:GLEnum, x:GLInt, y:GLInt, width:GLSizeI, height:GLSizeI, border:GLInt):Void;

	@:native('glCopyTexSubImage1D')
	public extern static function copyTexSubImage1D(target:GLEnum, level:GLInt, xoffset:GLInt, x:GLInt, y:GLInt, width:GLSizeI):Void;

	@:native('glCopyTexSubImage2D')
	public extern static function copyTexSubImage2D(target:GLEnum, level:GLInt, xoffset:GLInt, yoffset:GLInt, x:GLInt, y:GLInt, width:GLSizeI, height:GLSizeI):Void;

	@:native('glTexSubImage1D')
	public extern static function texSubImage1D(target:GLEnum, level:GLInt, xoffset:GLInt, width:GLSizeI, format:GLEnum, type:GLEnum, pixels:ConstPtr<Void>):Void;

	@:native('glTexSubImage2D')
	public extern static function texSubImage2D(target:GLEnum, level:GLInt, xoffset:GLInt, yoffset:GLInt, width:GLSizeI, height:GLSizeI, format:GLEnum, type:GLEnum, pixels:ConstPtr<Void>):Void;

	@:native('glBindTexture')
	public extern static function bindTexture(target:GLEnum, texture:GLUInt):Void;

	@:native('glDeleteTextures')
	public extern static function deleteTextures(n:GLSizeI, textures:Ptr<GLUInt>):Void;

	@:native('glGenTextures')
	public extern static function genTextures(n:GLSizeI, textures:Ptr<GLUInt>):Void;

	@:native('glIsTexture')
	public extern static function isTexture(texture:GLUInt):GLBool;

	@:native('glDrawRangeElements')
	public extern static function drawRangeElements(mode:GLEnum, start:GLUInt, end:GLUInt, count:GLSizeI, type:GLEnum, indices:ConstPtr<Void>):Void;

	@:native('glTexImage3D')
	public extern static function texImage3D(target:GLEnum, level:GLInt, internalformat:GLInt, width:GLSizeI, height:GLSizeI, depth:GLSizeI, border:GLInt, format:GLEnum, type:GLEnum, pixels:ConstPtr<Void>):Void;

	@:native('glTexSubImage3D')
	public extern static function texSubImage3D(target:GLEnum, level:GLInt, xoffset:GLInt, yoffset:GLInt, zoffset:GLInt, width:GLSizeI, height:GLSizeI, depth:GLSizeI, format:GLEnum, type:GLEnum, pixels:ConstPtr<Void>):Void;

	@:native('glCopyTexSubImage3D')
	public extern static function copyTexSubImage3D(target:GLEnum, level:GLInt, xoffset:GLInt, yoffset:GLInt, zoffset:GLInt, x:GLInt, y:GLInt, width:GLSizeI, height:GLSizeI):Void;

	@:native('glActiveTexture')
	public extern static function activeTexture(texture:GLEnum):Void;

	@:native('glSampleCoverage')
	public extern static function sampleCoverage(value:GLFloat, invert:GLBool):Void;

	@:native('glCompressedTexImage3D')
	public extern static function compressedTexImage3D(target:GLEnum, level:GLInt, internalformat:GLEnum, width:GLSizeI, height:GLSizeI, depth:GLSizeI, border:GLInt, imageSize:GLSizeI, data:ConstPtr<Void>):Void;

	@:native('glCompressedTexImage2D')
	public extern static function compressedTexImage2D(target:GLEnum, level:GLInt, internalformat:GLEnum, width:GLSizeI, height:GLSizeI, border:GLInt, imageSize:GLSizeI, data:ConstPtr<Void>):Void;

	@:native('glCompressedTexImage1D')
	public extern static function compressedTexImage1D(target:GLEnum, level:GLInt, internalformat:GLEnum, width:GLSizeI, border:GLInt, imageSize:GLSizeI, data:ConstPtr<Void>):Void;

	@:native('glCompressedTexSubImage3D')
	public extern static function compressedTexSubImage3D(target:GLEnum, level:GLInt, xoffset:GLInt, yoffset:GLInt, zoffset:GLInt, width:GLSizeI, height:GLSizeI, depth:GLSizeI, format:GLEnum, imageSize:GLSizeI, data:ConstPtr<Void>):Void;

	@:native('glCompressedTexSubImage2D')
	public extern static function compressedTexSubImage2D(target:GLEnum, level:GLInt, xoffset:GLInt, yoffset:GLInt, width:GLSizeI, height:GLSizeI, format:GLEnum, imageSize:GLSizeI, data:ConstPtr<Void>):Void;

	@:native('glCompressedTexSubImage1D')
	public extern static function compressedTexSubImage1D(target:GLEnum, level:GLInt, xoffset:GLInt, width:GLSizeI, format:GLEnum, imageSize:GLSizeI, data:ConstPtr<Void>):Void;

	@:native('glGetCompressedTexImage')
	public extern static function getCompressedTexImage(target:GLEnum, level:GLInt, img:Ptr<Void>):Void;

	@:native('glBlendFuncSeparate')
	public extern static function blendFuncSeparate(sfactorRGB:GLEnum, dfactorRGB:GLEnum, sfactorAlpha:GLEnum, dfactorAlpha:GLEnum):Void;

	@:native('glMultiDrawArrays')
	public extern static function multiDrawArrays(mode:GLEnum, first:ConstPtr<GLInt>, count:ConstPtr<GLSizeI>, drawcount:GLSizeI):Void;

	// @:native('glMultiDrawElements') TODO: kill whoever the fuck decided to make a 'const void* const*' as a var type.
	// public extern static function multiDrawElements(mode:GLEnum, count:ConstPtr<GLSizeI>, type:GLEnum, const*indices:ConstPtr<Void>, drawcount:GLSizeI):Void;

	@:native('glPointParameterf')
	public extern static function pointParameterf(pname:GLEnum, param:GLFloat):Void;

	@:native('glPointParameterfv')
	public extern static function pointParameterfv(pname:GLEnum, params:ConstPtr<GLFloat>):Void;

	@:native('glPointParameteri')
	public extern static function pointParameteri(pname:GLEnum, param:GLInt):Void;

	@:native('glPointParameteriv')
	public extern static function pointParameteriv(pname:GLEnum, params:ConstPtr<GLInt>):Void;

	@:native('glBlendColor')
	public extern static function blendColor(red:GLFloat, green:GLFloat, blue:GLFloat, alpha:GLFloat):Void;

	@:native('glBlendEquation')
	public extern static function blendEquation(mode:GLEnum):Void;

	@:native('glGenQueries')
	public extern static function genQueries(n:GLSizeI, ids:Ptr<GLUInt>):Void;

	@:native('glDeleteQueries')
	public extern static function deleteQueries(n:GLSizeI, ids:ConstPtr<GLUInt>):Void;

	@:native('glIsQuery')
	public extern static function isQuery(id:GLUInt):GLBool;

	@:native('glBeginQuery')
	public extern static function beginQuery(target:GLEnum, id:GLUInt):Void;

	@:native('glEndQuery')
	public extern static function endQuery(target:GLEnum):Void;

	@:native('glGetQueryiv')
	public extern static function getQueryiv(target:GLEnum, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetQueryObjectiv')
	public extern static function getQueryObjectiv(id:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetQueryObjectuiv')
	public extern static function getQueryObjectuiv(id:GLUInt, pname:GLEnum, params:Ptr<GLUInt>):Void;

	@:native('glBindBuffer')
	public extern static function bindBuffer(target:GLEnum, buffer:GLUInt):Void;

	@:native('glDeleteBuffers')
	public extern static function deleteBuffers(n:GLSizeI, buffers:ConstPtr<GLUInt>):Void;

	@:native('glGenBuffers')
	public extern static function genBuffers(n:GLSizeI, buffers:Ptr<GLUInt>):Void;

	@:native('glIsBuffer')
	public extern static function isBuffer(buffer:GLUInt):GLBool;

	@:native('glBufferData')
	public extern static function bufferData(target:GLEnum, size:GLSizeIPointer, data:ConstPtr<Void>, usage:GLEnum):Void;

	@:native('glBufferSubData')
	public extern static function bufferSubData(target:GLEnum, offset:GLIntPointer, size:GLSizeIPointer, data:ConstPtr<Void>):Void;

	@:native('glGetBufferSubData')
	public extern static function getBufferSubData(target:GLEnum, offset:GLIntPointer, size:GLSizeIPointer, data:Ptr<Void>):Void;

	@:native('glMapBuffer')
	public extern static function mapBuffer(target:GLEnum, access:GLEnum):Ptr<Void>;

	@:native('glUnmapBuffer')
	public extern static function unmapBuffer(target:GLEnum):GLBool;

	@:native('glGetBufferParameteriv')
	public extern static function getBufferParameteriv(target:GLEnum, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetBufferPointerv')
	public extern static function getBufferPointerv(target:GLEnum, pname:GLEnum, params:Ptr<Ptr<Void>>):Void;

	@:native('glBlendEquationSeparate')
	public extern static function blendEquationSeparate(modeRGB:GLEnum, modeAlpha:GLEnum):Void;

	@:native('glDrawBuffers')
	public extern static function drawBuffers(n:GLSizeI, bufs:ConstPtr<GLEnum>):Void;

	@:native('glStencilOpSeparate')
	public extern static function stencilOpSeparate(face:GLEnum, sfail:GLEnum, dpfail:GLEnum, dppass:GLEnum):Void;

	@:native('glStencilFuncSeparate')
	public extern static function stencilFuncSeparate(face:GLEnum, func:GLEnum, ref:GLInt, mask:GLUInt):Void;

	@:native('glStencilMaskSeparate')
	public extern static function stencilMaskSeparate(face:GLEnum, mask:GLUInt):Void;

	@:native('glAttachShader')
	public extern static function attachShader(program:GLUInt, shader:GLUInt):Void;

	@:native('glBindAttribLocation')
	public extern static function bindAttribLocation(program:GLUInt, index:GLUInt, name:ConstCharPtr):Void;

	@:native('glCompileShader')
	public extern static function compileShader(shader:GLUInt):Void;

	@:native('glCreateProgram')
	public extern static function createProgram():GLUInt;

	@:native('glCreateShader')
	public extern static function createShader(type:GLEnum):GLUInt;

	@:native('glDeleteProgram')
	public extern static function deleteProgram(program:GLUInt):Void;

	@:native('glDeleteShader')
	public extern static function deleteShader(shader:GLUInt):Void;

	@:native('glDetachShader')
	public extern static function detachShader(program:GLUInt, shader:GLUInt):Void;

	@:native('glDisableVertexAttribArray')
	public extern static function disableVertexAttribArray(index:GLUInt):Void;

	@:native('glEnableVertexAttribArray')
	public extern static function enableVertexAttribArray(index:GLUInt):Void;

	@:native('glGetActiveAttrib')
	public extern static function getActiveAttrib(program:GLUInt, index:GLUInt, bufSize:GLSizeI, length:Ptr<GLSizeI>, size:Ptr<GLInt>, type:Ptr<GLEnum>, name:Ptr<GLChar>):Void;

	@:native('glGetActiveUniform')
	public extern static function getActiveUniform(program:GLUInt, index:GLUInt, bufSize:GLSizeI, length:Ptr<GLSizeI>, size:Ptr<GLInt>, type:Ptr<GLEnum>, name:Ptr<GLChar>):Void;

	@:native('glGetAttachedShaders')
	public extern static function getAttachedShaders(program:GLUInt, maxCount:GLSizeI, count:Ptr<GLSizeI>, shaders:Ptr<GLUInt>):Void;

	@:native('glGetAttribLocation')
	public extern static function getAttribLocation(program:GLUInt, name:ConstCharPtr):GLInt;

	@:native('glGetProgramiv')
	public extern static function getProgramiv(program:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetProgramInfoLog')
	public extern static function getProgramInfoLog(program:GLUInt, bufSize:GLSizeI, length:Ptr<GLSizeI>, infoLog:Ptr<GLChar>):Void;

	@:native('glGetShaderiv')
	public extern static function getShaderiv(shader:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetShaderInfoLog')
	public extern static function getShaderInfoLog(shader:GLUInt, bufSize:GLSizeI, length:Ptr<GLSizeI>, infoLog:Ptr<GLChar>):Void;

	@:native('glGetShaderSource')
	public extern static function getShaderSource(shader:GLUInt, bufSize:GLSizeI, length:Ptr<GLSizeI>, source:Ptr<GLChar>):Void;

	@:native('glGetUniformLocation')
	public extern static function getUniformLocation(program:GLUInt, name:ConstCharPtr):GLInt;

	@:native('glGetUniformfv')
	public extern static function getUniformfv(program:GLUInt, location:GLInt, params:Ptr<GLFloat>):Void;

	@:native('glGetUniformiv')
	public extern static function getUniformiv(program:GLUInt, location:GLInt, params:Ptr<GLInt>):Void;

	@:native('glGetVertexAttribdv')
	public extern static function getVertexAttribdv(index:GLUInt, pname:GLEnum, params:Ptr<GLDouble>):Void;

	@:native('glGetVertexAttribfv')
	public extern static function getVertexAttribfv(index:GLUInt, pname:GLEnum, params:Ptr<GLFloat>):Void;

	@:native('glGetVertexAttribiv')
	public extern static function getVertexAttribiv(index:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetVertexAttribPointerv')
	public extern static function getVertexAttribPointerv(index:GLUInt, pname:GLEnum, Ptr:Ptr<Ptr<Void>>):Void;

	@:native('glIsProgram')
	public extern static function isProgram(program:GLUInt):GLBool;

	@:native('glIsShader')
	public extern static function isShader(shader:GLUInt):GLBool;

	@:native('glLinkProgram')
	public extern static function linkProgram(program:GLUInt):Void;

	@:native('glShaderSource')
	public extern static function shaderSource(shader:GLUInt, count:GLSizeI, string:Ptr<ConstCharPtr>, length:ConstPtr<GLInt>):Void;

	@:native('glUseProgram')
	public extern static function useProgram(program:GLUInt):Void;

	@:native('glUniform1f')
	public extern static function uniform1f(location:GLInt, v0:GLFloat):Void;

	@:native('glUniform2f')
	public extern static function uniform2f(location:GLInt, v0:GLFloat, v1:GLFloat):Void;

	@:native('glUniform3f')
	public extern static function uniform3f(location:GLInt, v0:GLFloat, v1:GLFloat, v2:GLFloat):Void;

	@:native('glUniform4f')
	public extern static function uniform4f(location:GLInt, v0:GLFloat, v1:GLFloat, v2:GLFloat, v3:GLFloat):Void;

	@:native('glUniform1i')
	public extern static function uniform1i(location:GLInt, v0:GLInt):Void;

	@:native('glUniform2i')
	public extern static function uniform2i(location:GLInt, v0:GLInt, v1:GLInt):Void;

	@:native('glUniform3i')
	public extern static function uniform3i(location:GLInt, v0:GLInt, v1:GLInt, v2:GLInt):Void;

	@:native('glUniform4i')
	public extern static function uniform4i(location:GLInt, v0:GLInt, v1:GLInt, v2:GLInt, v3:GLInt):Void;

	@:native('glUniform1fv')
	public extern static function uniform1fv(location:GLInt, count:GLSizeI, value:ConstPtr<GLFloat>):Void;

	@:native('glUniform2fv')
	public extern static function uniform2fv(location:GLInt, count:GLSizeI, value:ConstPtr<GLFloat>):Void;

	@:native('glUniform3fv')
	public extern static function uniform3fv(location:GLInt, count:GLSizeI, value:ConstPtr<GLFloat>):Void;

	@:native('glUniform4fv')
	public extern static function uniform4fv(location:GLInt, count:GLSizeI, value:ConstPtr<GLFloat>):Void;

	@:native('glUniform1iv')
	public extern static function uniform1iv(location:GLInt, count:GLSizeI, value:ConstPtr<GLInt>):Void;

	@:native('glUniform2iv')
	public extern static function uniform2iv(location:GLInt, count:GLSizeI, value:ConstPtr<GLInt>):Void;

	@:native('glUniform3iv')
	public extern static function uniform3iv(location:GLInt, count:GLSizeI, value:ConstPtr<GLInt>):Void;

	@:native('glUniform4iv')
	public extern static function uniform4iv(location:GLInt, count:GLSizeI, value:ConstPtr<GLInt>):Void;

	@:native('glUniformMatrix2fv')
	public extern static function uniformMatrix2fv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glUniformMatrix3fv')
	public extern static function uniformMatrix3fv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glUniformMatrix4fv')
	public extern static function uniformMatrix4fv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glValidateProgram')
	public extern static function validateProgram(program:GLUInt):Void;

	@:native('glVertexAttrib1d')
	public extern static function vertexAttrib1d(index:GLUInt, x:GLDouble):Void;

	@:native('glVertexAttrib1dv')
	public extern static function vertexAttrib1dv(index:GLUInt, v:ConstPtr<GLDouble>):Void;

	@:native('glVertexAttrib1f')
	public extern static function vertexAttrib1f(index:GLUInt, x:GLFloat):Void;

	@:native('glVertexAttrib1fv')
	public extern static function vertexAttrib1fv(index:GLUInt, v:ConstPtr<GLFloat>):Void;

	@:native('glVertexAttrib1s')
	public extern static function vertexAttrib1s(index:GLUInt, x:GLShort):Void;

	@:native('glVertexAttrib1sv')
	public extern static function vertexAttrib1sv(index:GLUInt, v:ConstPtr<GLShort>):Void;

	@:native('glVertexAttrib2d')
	public extern static function vertexAttrib2d(index:GLUInt, x:GLDouble, y:GLDouble):Void;

	@:native('glVertexAttrib2dv')
	public extern static function vertexAttrib2dv(index:GLUInt, v:ConstPtr<GLDouble>):Void;

	@:native('glVertexAttrib2f')
	public extern static function vertexAttrib2f(index:GLUInt, x:GLFloat, y:GLFloat):Void;

	@:native('glVertexAttrib2fv')
	public extern static function vertexAttrib2fv(index:GLUInt, v:ConstPtr<GLFloat>):Void;

	@:native('glVertexAttrib2s')
	public extern static function vertexAttrib2s(index:GLUInt, x:GLShort, y:GLShort):Void;

	@:native('glVertexAttrib2sv')
	public extern static function vertexAttrib2sv(index:GLUInt, v:ConstPtr<GLShort>):Void;

	@:native('glVertexAttrib3d')
	public extern static function vertexAttrib3d(index:GLUInt, x:GLDouble, y:GLDouble, z:GLDouble):Void;

	@:native('glVertexAttrib3dv')
	public extern static function vertexAttrib3dv(index:GLUInt, v:ConstPtr<GLDouble>):Void;

	@:native('glVertexAttrib3f')
	public extern static function vertexAttrib3f(index:GLUInt, x:GLFloat, y:GLFloat, z:GLFloat):Void;

	@:native('glVertexAttrib3fv')
	public extern static function vertexAttrib3fv(index:GLUInt, v:ConstPtr<GLFloat>):Void;

	@:native('glVertexAttrib3s')
	public extern static function vertexAttrib3s(index:GLUInt, x:GLShort, y:GLShort, z:GLShort):Void;

	@:native('glVertexAttrib3sv')
	public extern static function vertexAttrib3sv(index:GLUInt, v:ConstPtr<GLShort>):Void;

	@:native('glVertexAttrib4Nbv')
	public extern static function vertexAttrib4Nbv(index:GLUInt, v:ConstPtr<GLByte>):Void;

	@:native('glVertexAttrib4Niv')
	public extern static function vertexAttrib4Niv(index:GLUInt, v:ConstPtr<GLInt>):Void;

	@:native('glVertexAttrib4Nsv')
	public extern static function vertexAttrib4Nsv(index:GLUInt, v:ConstPtr<GLShort>):Void;

	@:native('glVertexAttrib4Nub')
	public extern static function vertexAttrib4Nub(index:GLUInt, x:GLUByte, y:GLUByte, z:GLUByte, w:GLUByte):Void;

	@:native('glVertexAttrib4Nubv')
	public extern static function vertexAttrib4Nubv(index:GLUInt, v:ConstPtr<GLUByte>):Void;

	@:native('glVertexAttrib4Nuiv')
	public extern static function vertexAttrib4Nuiv(index:GLUInt, v:ConstPtr<GLUInt>):Void;

	@:native('glVertexAttrib4Nusv')
	public extern static function vertexAttrib4Nusv(index:GLUInt, v:ConstPtr<GLUShort>):Void;

	@:native('glVertexAttrib4bv')
	public extern static function vertexAttrib4bv(index:GLUInt, v:ConstPtr<GLByte>):Void;

	@:native('glVertexAttrib4d')
	public extern static function vertexAttrib4d(index:GLUInt, x:GLDouble, y:GLDouble, z:GLDouble, w:GLDouble):Void;

	@:native('glVertexAttrib4dv')
	public extern static function vertexAttrib4dv(index:GLUInt, v:ConstPtr<GLDouble>):Void;

	@:native('glVertexAttrib4f')
	public extern static function vertexAttrib4f(index:GLUInt, x:GLFloat, y:GLFloat, z:GLFloat, w:GLFloat):Void;

	@:native('glVertexAttrib4fv')
	public extern static function vertexAttrib4fv(index:GLUInt, v:ConstPtr<GLFloat>):Void;

	@:native('glVertexAttrib4iv')
	public extern static function vertexAttrib4iv(index:GLUInt, v:ConstPtr<GLInt>):Void;

	@:native('glVertexAttrib4s')
	public extern static function vertexAttrib4s(index:GLUInt, x:GLShort, y:GLShort, z:GLShort, w:GLShort):Void;

	@:native('glVertexAttrib4sv')
	public extern static function vertexAttrib4sv(index:GLUInt, v:ConstPtr<GLShort>):Void;

	@:native('glVertexAttrib4ubv')
	public extern static function vertexAttrib4ubv(index:GLUInt, v:ConstPtr<GLUByte>):Void;

	@:native('glVertexAttrib4uiv')
	public extern static function vertexAttrib4uiv(index:GLUInt, v:ConstPtr<GLUInt>):Void;

	@:native('glVertexAttrib4usv')
	public extern static function vertexAttrib4usv(index:GLUInt, v:ConstPtr<GLUShort>):Void;

	@:native('glVertexAttribPointer')
	public extern static function vertexAttribPointer(index:GLUInt, size:GLInt, type:GLEnum, normalized:GLBool, stride:GLSizeI, Ptr:ConstPtr<Void>):Void;

	@:native('glUniformMatrix2x3fv')
	public extern static function uniformMatrix2x3fv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glUniformMatrix3x2fv')
	public extern static function uniformMatrix3x2fv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glUniformMatrix2x4fv')
	public extern static function uniformMatrix2x4fv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glUniformMatrix4x2fv')
	public extern static function uniformMatrix4x2fv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glUniformMatrix3x4fv')
	public extern static function uniformMatrix3x4fv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glUniformMatrix4x3fv')
	public extern static function uniformMatrix4x3fv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glColorMaski')
	public extern static function colorMaski(index:GLUInt, r:GLBool, g:GLBool, b:GLBool, a:GLBool):Void;

	@:native('glGetBooleani_v')
	public extern static function getBooleani_v(target:GLEnum, index:GLUInt, data:Ptr<GLBool>):Void;

	@:native('glGetIntegeri_v')
	public extern static function getIntegeri_v(target:GLEnum, index:GLUInt, data:Ptr<GLInt>):Void;

	@:native('glEnablei')
	public extern static function enablei(target:GLEnum, index:GLUInt):Void;

	@:native('glDisablei')
	public extern static function disablei(target:GLEnum, index:GLUInt):Void;

	@:native('glIsEnabledi')
	public extern static function isEnabledi(target:GLEnum, index:GLUInt):GLBool;

	@:native('glBeginTransformFeedback')
	public extern static function beginTransformFeedback(primitiveMode:GLEnum):Void;

	@:native('glEndTransformFeedback')
	public extern static function endTransformFeedback():Void;

	@:native('glBindBufferRange')
	public extern static function bindBufferRange(target:GLEnum, index:GLUInt, buffer:GLUInt, offset:GLIntPointer, size:GLSizeIPointer):Void;

	@:native('glBindBufferBase')
	public extern static function bindBufferBase(target:GLEnum, index:GLUInt, buffer:GLUInt):Void;

	@:native('glTransformFeedbackVaryings')
	public extern static function transformFeedbackVaryings(program:GLUInt, count:GLSizeI, varyings:Ptr<ConstCharPtr>, bufferMode:GLEnum):Void;

	@:native('glGetTransformFeedbackVarying')
	public extern static function getTransformFeedbackVarying(program:GLUInt, index:GLUInt, bufSize:GLSizeI, length:Ptr<GLSizeI>, size:Ptr<GLSizeI>, type:Ptr<GLEnum>, name:Ptr<GLChar>):Void;

	@:native('glClampColor')
	public extern static function clampColor(target:GLEnum, clamp:GLEnum):Void;

	@:native('glBeginConditionalRender')
	public extern static function beginConditionalRender(id:GLUInt, mode:GLEnum):Void;

	@:native('glEndConditionalRender')
	public extern static function endConditionalRender():Void;

	@:native('glVertexAttribIPointer')
	public extern static function vertexAttribIPointer(index:GLUInt, size:GLInt, type:GLEnum, stride:GLSizeI, Ptr:ConstPtr<Void>):Void;

	@:native('glGetVertexAttribIiv')
	public extern static function getVertexAttribIiv(index:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetVertexAttribIuiv')
	public extern static function getVertexAttribIuiv(index:GLUInt, pname:GLEnum, params:Ptr<GLUInt>):Void;

	@:native('glVertexAttribI1i')
	public extern static function vertexAttribI1i(index:GLUInt, x:GLInt):Void;

	@:native('glVertexAttribI2i')
	public extern static function vertexAttribI2i(index:GLUInt, x:GLInt, y:GLInt):Void;

	@:native('glVertexAttribI3i')
	public extern static function vertexAttribI3i(index:GLUInt, x:GLInt, y:GLInt, z:GLInt):Void;

	@:native('glVertexAttribI4i')
	public extern static function vertexAttribI4i(index:GLUInt, x:GLInt, y:GLInt, z:GLInt, w:GLInt):Void;

	@:native('glVertexAttribI1ui')
	public extern static function vertexAttribI1ui(index:GLUInt, x:GLUInt):Void;

	@:native('glVertexAttribI2ui')
	public extern static function vertexAttribI2ui(index:GLUInt, x:GLUInt, y:GLUInt):Void;

	@:native('glVertexAttribI3ui')
	public extern static function vertexAttribI3ui(index:GLUInt, x:GLUInt, y:GLUInt, z:GLUInt):Void;

	@:native('glVertexAttribI4ui')
	public extern static function vertexAttribI4ui(index:GLUInt, x:GLUInt, y:GLUInt, z:GLUInt, w:GLUInt):Void;

	@:native('glVertexAttribI1iv')
	public extern static function vertexAttribI1iv(index:GLUInt, v:ConstPtr<GLInt>):Void;

	@:native('glVertexAttribI2iv')
	public extern static function vertexAttribI2iv(index:GLUInt, v:ConstPtr<GLInt>):Void;

	@:native('glVertexAttribI3iv')
	public extern static function vertexAttribI3iv(index:GLUInt, v:ConstPtr<GLInt>):Void;

	@:native('glVertexAttribI4iv')
	public extern static function vertexAttribI4iv(index:GLUInt, v:ConstPtr<GLInt>):Void;

	@:native('glVertexAttribI1uiv')
	public extern static function vertexAttribI1uiv(index:GLUInt, v:ConstPtr<GLUInt>):Void;

	@:native('glVertexAttribI2uiv')
	public extern static function vertexAttribI2uiv(index:GLUInt, v:ConstPtr<GLUInt>):Void;

	@:native('glVertexAttribI3uiv')
	public extern static function vertexAttribI3uiv(index:GLUInt, v:ConstPtr<GLUInt>):Void;

	@:native('glVertexAttribI4uiv')
	public extern static function vertexAttribI4uiv(index:GLUInt, v:ConstPtr<GLUInt>):Void;

	@:native('glVertexAttribI4bv')
	public extern static function vertexAttribI4bv(index:GLUInt, v:ConstPtr<GLByte>):Void;

	@:native('glVertexAttribI4sv')
	public extern static function vertexAttribI4sv(index:GLUInt, v:ConstPtr<GLShort>):Void;

	@:native('glVertexAttribI4ubv')
	public extern static function vertexAttribI4ubv(index:GLUInt, v:ConstPtr<GLUByte>):Void;

	@:native('glVertexAttribI4usv')
	public extern static function vertexAttribI4usv(index:GLUInt, v:ConstPtr<GLUShort>):Void;

	@:native('glGetUniformuiv')
	public extern static function getUniformuiv(program:GLUInt, location:GLInt, params:Ptr<GLUInt>):Void;

	@:native('glBindFragDataLocation')
	public extern static function bindFragDataLocation(program:GLUInt, color:GLUInt, name:ConstCharPtr):Void;

	@:native('glGetFragDataLocation')
	public extern static function getFragDataLocation(program:GLUInt, name:ConstCharPtr):GLInt;

	@:native('glUniform1ui')
	public extern static function uniform1ui(location:GLInt, v0:GLUInt):Void;

	@:native('glUniform2ui')
	public extern static function uniform2ui(location:GLInt, v0:GLUInt, v1:GLUInt):Void;

	@:native('glUniform3ui')
	public extern static function uniform3ui(location:GLInt, v0:GLUInt, v1:GLUInt, v2:GLUInt):Void;

	@:native('glUniform4ui')
	public extern static function uniform4ui(location:GLInt, v0:GLUInt, v1:GLUInt, v2:GLUInt, v3:GLUInt):Void;

	@:native('glUniform1uiv')
	public extern static function uniform1uiv(location:GLInt, count:GLSizeI, value:ConstPtr<GLUInt>):Void;

	@:native('glUniform2uiv')
	public extern static function uniform2uiv(location:GLInt, count:GLSizeI, value:ConstPtr<GLUInt>):Void;

	@:native('glUniform3uiv')
	public extern static function uniform3uiv(location:GLInt, count:GLSizeI, value:ConstPtr<GLUInt>):Void;

	@:native('glUniform4uiv')
	public extern static function uniform4uiv(location:GLInt, count:GLSizeI, value:ConstPtr<GLUInt>):Void;

	@:native('glTexParameterIiv')
	public extern static function texParameterIiv(target:GLEnum, pname:GLEnum, params:ConstPtr<GLInt>):Void;

	@:native('glTexParameterIuiv')
	public extern static function texParameterIuiv(target:GLEnum, pname:GLEnum, params:ConstPtr<GLUInt>):Void;

	@:native('glGetTexParameterIiv')
	public extern static function getTexParameterIiv(target:GLEnum, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetTexParameterIuiv')
	public extern static function getTexParameterIuiv(target:GLEnum, pname:GLEnum, params:Ptr<GLUInt>):Void;

	@:native('glClearBufferiv')
	public extern static function clearBufferiv(buffer:GLEnum, drawbuffer:GLInt, value:ConstPtr<GLInt>):Void;

	@:native('glClearBufferuiv')
	public extern static function clearBufferuiv(buffer:GLEnum, drawbuffer:GLInt, value:ConstPtr<GLUInt>):Void;

	@:native('glClearBufferfv')
	public extern static function clearBufferfv(buffer:GLEnum, drawbuffer:GLInt, value:ConstPtr<GLFloat>):Void;

	@:native('glClearBufferfi')
	public extern static function clearBufferfi(buffer:GLEnum, drawbuffer:GLInt, depth:GLFloat, stencil:GLInt):Void;

	@:native('glGetStringi')
	public extern static function getStringi(name:GLEnum, index:GLUInt):ConstPtr<GLUByte>;

	@:native('glIsRenderbuffer')
	public extern static function isRenderbuffer(renderbuffer:GLUInt):GLBool;

	@:native('glBindRenderbuffer')
	public extern static function bindRenderbuffer(target:GLEnum, renderbuffer:GLUInt):Void;

	@:native('glDeleteRenderbuffers')
	public extern static function deleteRenderbuffers(n:GLSizeI, renderbuffers:ConstPtr<GLUInt>):Void;

	@:native('glGenRenderbuffers')
	public extern static function genRenderbuffers(n:GLSizeI, renderbuffers:Ptr<GLUInt>):Void;

	@:native('glRenderbufferStorage')
	public extern static function renderbufferStorage(target:GLEnum, internalformat:GLEnum, width:GLSizeI, height:GLSizeI):Void;

	@:native('glGetRenderbufferParameteriv')
	public extern static function getRenderbufferParameteriv(target:GLEnum, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glIsFramebuffer')
	public extern static function isFramebuffer(framebuffer:GLUInt):GLBool;

	@:native('glBindFramebuffer')
	public extern static function bindFramebuffer(target:GLEnum, framebuffer:GLUInt):Void;

	@:native('glDeleteFramebuffers')
	public extern static function deleteFramebuffers(n:GLSizeI, framebuffers:ConstPtr<GLUInt>):Void;

	@:native('glGenFramebuffers')
	public extern static function genFramebuffers(n:GLSizeI, framebuffers:Ptr<GLUInt>):Void;

	@:native('glCheckFramebufferStatus')
	public extern static function checkFramebufferStatus(target:GLEnum):GLEnum;

	@:native('glFramebufferTexture1D')
	public extern static function framebufferTexture1D(target:GLEnum, attachment:GLEnum, textarget:GLEnum, texture:GLUInt, level:GLInt):Void;

	@:native('glFramebufferTexture2D')
	public extern static function framebufferTexture2D(target:GLEnum, attachment:GLEnum, textarget:GLEnum, texture:GLUInt, level:GLInt):Void;

	@:native('glFramebufferTexture3D')
	public extern static function framebufferTexture3D(target:GLEnum, attachment:GLEnum, textarget:GLEnum, texture:GLUInt, level:GLInt, zoffset:GLInt):Void;

	@:native('glFramebufferRenderbuffer')
	public extern static function framebufferRenderbuffer(target:GLEnum, attachment:GLEnum, renderbuffertarget:GLEnum, renderbuffer:GLUInt):Void;

	@:native('glGetFramebufferAttachmentParameteriv')
	public extern static function getFramebufferAttachmentParameteriv(target:GLEnum, attachment:GLEnum, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGenerateMipmap')
	public extern static function generateMipmap(target:GLEnum):Void;

	@:native('glBlitFramebuffer')
	public extern static function blitFramebuffer(srcX0:GLInt, srcY0:GLInt, srcX1:GLInt, srcY1:GLInt, dstX0:GLInt, dstY0:GLInt, dstX1:GLInt, dstY1:GLInt, mask:GLBitField, filter:GLEnum):Void;

	@:native('glRenderbufferStorageMultisample')
	public extern static function renderbufferStorageMultisample(target:GLEnum, samples:GLSizeI, internalformat:GLEnum, width:GLSizeI, height:GLSizeI):Void;

	@:native('glFramebufferTextureLayer')
	public extern static function framebufferTextureLayer(target:GLEnum, attachment:GLEnum, texture:GLUInt, level:GLInt, layer:GLInt):Void;

	@:native('glMapBufferRange')
	public extern static function mapBufferRange(target:GLEnum, offset:GLIntPointer, length:GLSizeIPointer, access:GLBitField):Ptr<Void>;

	@:native('glFlushMappedBufferRange')
	public extern static function flushMappedBufferRange(target:GLEnum, offset:GLIntPointer, length:GLSizeIPointer):Void;

	@:native('glBindVertexArray')
	public extern static function bindVertexArray(array:GLUInt):Void;

	@:native('glDeleteVertexArrays')
	public extern static function deleteVertexArrays(n:GLSizeI, arrays:ConstPtr<GLUInt>):Void;

	@:native('glGenVertexArrays')
	public extern static function genVertexArrays(n:GLSizeI, arrays:Ptr<GLUInt>):Void;

	@:native('glIsVertexArray')
	public extern static function isVertexArray(array:GLUInt):GLBool;

	@:native('glDrawArraysInstanced')
	public extern static function drawArraysInstanced(mode:GLEnum, first:GLInt, count:GLSizeI, instancecount:GLSizeI):Void;

	@:native('glDrawElementsInstanced')
	public extern static function drawElementsInstanced(mode:GLEnum, count:GLSizeI, type:GLEnum, indices:ConstPtr<Void>, instancecount:GLSizeI):Void;

	@:native('glTexBuffer')
	public extern static function texBuffer(target:GLEnum, internalformat:GLEnum, buffer:GLUInt):Void;

	@:native('glPrimitiveRestartIndex')
	public extern static function primitiveRestartIndex(index:GLUInt):Void;

	@:native('glCopyBufferSubData')
	public extern static function copyBufferSubData(readTarget:GLEnum, writeTarget:GLEnum, readOffset:GLIntPointer, writeOffset:GLIntPointer, size:GLSizeIPointer):Void;

	@:native('glGetUniformIndices')
	public extern static function getUniformIndices(program:GLUInt, uniformCount:GLSizeI, uniformNames:Ptr<ConstCharPtr>, uniformIndices:Ptr<GLUInt>):Void;

	@:native('glGetActiveUniformsiv')
	public extern static function getActiveUniformsiv(program:GLUInt, uniformCount:GLSizeI, uniformIndices:ConstPtr<GLUInt>, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetActiveUniformName')
	public extern static function getActiveUniformName(program:GLUInt, uniformIndex:GLUInt, bufSize:GLSizeI, length:Ptr<GLSizeI>, uniformName:Ptr<GLChar>):Void;

	@:native('glGetUniformBlockIndex')
	public extern static function getUniformBlockIndex(program:GLUInt, uniformBlockName:ConstCharPtr):GLUInt;

	@:native('glGetActiveUniformBlockiv')
	public extern static function getActiveUniformBlockiv(program:GLUInt, uniformBlockIndex:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetActiveUniformBlockName')
	public extern static function getActiveUniformBlockName(program:GLUInt, uniformBlockIndex:GLUInt, bufSize:GLSizeI, length:Ptr<GLSizeI>, uniformBlockName:Ptr<GLChar>):Void;

	@:native('glUniformBlockBinding')
	public extern static function uniformBlockBinding(program:GLUInt, uniformBlockIndex:GLUInt, uniformBlockBinding:GLUInt):Void;

	@:native('glDrawElementsBaseVertex')
	public extern static function drawElementsBaseVertex(mode:GLEnum, count:GLSizeI, type:GLEnum, indices:ConstPtr<Void>, basevertex:GLInt):Void;

	@:native('glDrawRangeElementsBaseVertex')
	public extern static function drawRangeElementsBaseVertex(mode:GLEnum, start:GLUInt, end:GLUInt, count:GLSizeI, type:GLEnum, indices:ConstPtr<Void>, basevertex:GLInt):Void;

	@:native('glDrawElementsInstancedBaseVertex')
	public extern static function drawElementsInstancedBaseVertex(mode:GLEnum, count:GLSizeI, type:GLEnum, indices:ConstPtr<Void>, instancecount:GLSizeI, basevertex:GLInt):Void;

	// @:native('glMultiDrawElementsBaseVertex') same reason as line 1855.
	// public extern static function multiDrawElementsBaseVertex(mode:GLEnum, count:ConstPtr<GLSizeI>, type:GLEnum, const*indices:ConstPtr<Void>, drawcount:GLSizeI, basevertex:ConstPtr<GLInt>):Void;

	@:native('glProvokingVertex')
	public extern static function provokingVertex(mode:GLEnum):Void;

	@:native('glFenceSync')
	public extern static function fenceSync(condition:GLEnum, flags:GLBitField):Ptr<GLSync>;

	@:native('glIsSync')
	public extern static function isSync(sync:Ptr<GLSync>):GLBool;

	@:native('glDeleteSync')
	public extern static function deleteSync(sync:Ptr<GLSync>):Void;

	@:native('glClientWaitSync')
	public extern static function clientWaitSync(sync:Ptr<GLSync>, flags:GLBitField, timeout:GLUInt64):GLEnum;

	@:native('glWaitSync')
	public extern static function waitSync(sync:Ptr<GLSync>, flags:GLBitField, timeout:GLUInt64):Void;

	@:native('glGetInteger64v')
	public extern static function getInteger64v(pname:GLEnum, data:Ptr<Int64>):Void;

	@:native('glGetSynciv')
	public extern static function getSynciv(sync:Ptr<GLSync>, pname:GLEnum, count:GLSizeI, length:Ptr<GLSizeI>, values:Ptr<GLInt>):Void;

	@:native('glGetInteger64i_v')
	public extern static function getInteger64i_v(target:GLEnum, index:GLUInt, data:Ptr<Int64>):Void;

	@:native('glGetBufferParameteri64v')
	public extern static function getBufferParameteri64v(target:GLEnum, pname:GLEnum, params:Ptr<Int64>):Void;

	@:native('glFramebufferTexture')
	public extern static function framebufferTexture(target:GLEnum, attachment:GLEnum, texture:GLUInt, level:GLInt):Void;

	@:native('glTexImage2DMultisample')
	public extern static function texImage2DMultisample(target:GLEnum, samples:GLSizeI, internalformat:GLEnum, width:GLSizeI, height:GLSizeI, fixedsamplelocations:GLBool):Void;

	@:native('glTexImage3DMultisample')
	public extern static function texImage3DMultisample(target:GLEnum, samples:GLSizeI, internalformat:GLEnum, width:GLSizeI, height:GLSizeI, depth:GLSizeI, fixedsamplelocations:GLBool):Void;

	@:native('glGetMultisamplefv')
	public extern static function getMultisamplefv(pname:GLEnum, index:GLUInt, val:Ptr<GLFloat>):Void;

	@:native('glSampleMaski')
	public extern static function sampleMaski(maskNumber:GLUInt, mask:GLBitField):Void;

	@:native('glBindFragDataLocationIndexed')
	public extern static function bindFragDataLocationIndexed(program:GLUInt, colorNumber:GLUInt, index:GLUInt, name:ConstCharPtr):Void;

	@:native('glGetFragDataIndex')
	public extern static function getFragDataIndex(program:GLUInt, name:ConstCharPtr):GLInt;

	@:native('glGenSamplers')
	public extern static function genSamplers(count:GLSizeI, samplers:Ptr<GLUInt>):Void;

	@:native('glDeleteSamplers')
	public extern static function deleteSamplers(count:GLSizeI, samplers:ConstPtr<GLUInt>):Void;

	@:native('glIsSampler')
	public extern static function isSampler(sampler:GLUInt):GLBool;

	@:native('glBindSampler')
	public extern static function bindSampler(unit:GLUInt, sampler:GLUInt):Void;

	@:native('glSamplerParameteri')
	public extern static function samplerParameteri(sampler:GLUInt, pname:GLEnum, param:GLInt):Void;

	@:native('glSamplerParameteriv')
	public extern static function samplerParameteriv(sampler:GLUInt, pname:GLEnum, param:ConstPtr<GLInt>):Void;

	@:native('glSamplerParameterf')
	public extern static function samplerParameterf(sampler:GLUInt, pname:GLEnum, param:GLFloat):Void;

	@:native('glSamplerParameterfv')
	public extern static function samplerParameterfv(sampler:GLUInt, pname:GLEnum, param:ConstPtr<GLFloat>):Void;

	@:native('glSamplerParameterIiv')
	public extern static function samplerParameterIiv(sampler:GLUInt, pname:GLEnum, param:ConstPtr<GLInt>):Void;

	@:native('glSamplerParameterIuiv')
	public extern static function samplerParameterIuiv(sampler:GLUInt, pname:GLEnum, param:ConstPtr<GLUInt>):Void;

	@:native('glGetSamplerParameteriv')
	public extern static function getSamplerParameteriv(sampler:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetSamplerParameterIiv')
	public extern static function getSamplerParameterIiv(sampler:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetSamplerParameterfv')
	public extern static function getSamplerParameterfv(sampler:GLUInt, pname:GLEnum, params:Ptr<GLFloat>):Void;

	@:native('glGetSamplerParameterIuiv')
	public extern static function getSamplerParameterIuiv(sampler:GLUInt, pname:GLEnum, params:Ptr<GLUInt>):Void;

	@:native('glQueryCounter')
	public extern static function queryCounter(id:GLUInt, target:GLEnum):Void;

	@:native('glGetQueryObjecti64v')
	public extern static function getQueryObjecti64v(id:GLUInt, pname:GLEnum, params:Ptr<Int64>):Void;

	@:native('glGetQueryObjectui64v')
	public extern static function getQueryObjectui64v(id:GLUInt, pname:GLEnum, params:Ptr<UInt64>):Void;

	@:native('glVertexAttribDivisor')
	public extern static function vertexAttribDivisor(index:GLUInt, divisor:GLUInt):Void;

	@:native('glVertexAttribP1ui')
	public extern static function vertexAttribP1ui(index:GLUInt, type:GLEnum, normalized:GLBool, value:GLUInt):Void;

	@:native('glVertexAttribP1uiv')
	public extern static function vertexAttribP1uiv(index:GLUInt, type:GLEnum, normalized:GLBool, value:ConstPtr<GLUInt>):Void;

	@:native('glVertexAttribP2ui')
	public extern static function vertexAttribP2ui(index:GLUInt, type:GLEnum, normalized:GLBool, value:GLUInt):Void;

	@:native('glVertexAttribP2uiv')
	public extern static function vertexAttribP2uiv(index:GLUInt, type:GLEnum, normalized:GLBool, value:ConstPtr<GLUInt>):Void;

	@:native('glVertexAttribP3ui')
	public extern static function vertexAttribP3ui(index:GLUInt, type:GLEnum, normalized:GLBool, value:GLUInt):Void;

	@:native('glVertexAttribP3uiv')
	public extern static function vertexAttribP3uiv(index:GLUInt, type:GLEnum, normalized:GLBool, value:ConstPtr<GLUInt>):Void;

	@:native('glVertexAttribP4ui')
	public extern static function vertexAttribP4ui(index:GLUInt, type:GLEnum, normalized:GLBool, value:GLUInt):Void;

	@:native('glVertexAttribP4uiv')
	public extern static function vertexAttribP4uiv(index:GLUInt, type:GLEnum, normalized:GLBool, value:ConstPtr<GLUInt>):Void;

	@:native('glVertexP2ui')
	public extern static function vertexP2ui(type:GLEnum, value:GLUInt):Void;

	@:native('glVertexP2uiv')
	public extern static function vertexP2uiv(type:GLEnum, value:ConstPtr<GLUInt>):Void;

	@:native('glVertexP3ui')
	public extern static function vertexP3ui(type:GLEnum, value:GLUInt):Void;

	@:native('glVertexP3uiv')
	public extern static function vertexP3uiv(type:GLEnum, value:ConstPtr<GLUInt>):Void;

	@:native('glVertexP4ui')
	public extern static function vertexP4ui(type:GLEnum, value:GLUInt):Void;

	@:native('glVertexP4uiv')
	public extern static function vertexP4uiv(type:GLEnum, value:ConstPtr<GLUInt>):Void;

	@:native('glTexCoordP1ui')
	public extern static function texCoordP1ui(type:GLEnum, coords:GLUInt):Void;

	@:native('glTexCoordP1uiv')
	public extern static function texCoordP1uiv(type:GLEnum, coords:ConstPtr<GLUInt>):Void;

	@:native('glTexCoordP2ui')
	public extern static function texCoordP2ui(type:GLEnum, coords:GLUInt):Void;

	@:native('glTexCoordP2uiv')
	public extern static function texCoordP2uiv(type:GLEnum, coords:ConstPtr<GLUInt>):Void;

	@:native('glTexCoordP3ui')
	public extern static function texCoordP3ui(type:GLEnum, coords:GLUInt):Void;

	@:native('glTexCoordP3uiv')
	public extern static function texCoordP3uiv(type:GLEnum, coords:ConstPtr<GLUInt>):Void;

	@:native('glTexCoordP4ui')
	public extern static function texCoordP4ui(type:GLEnum, coords:GLUInt):Void;

	@:native('glTexCoordP4uiv')
	public extern static function texCoordP4uiv(type:GLEnum, coords:ConstPtr<GLUInt>):Void;

	@:native('glMultiTexCoordP1ui')
	public extern static function multiTexCoordP1ui(texture:GLEnum, type:GLEnum, coords:GLUInt):Void;

	@:native('glMultiTexCoordP1uiv')
	public extern static function multiTexCoordP1uiv(texture:GLEnum, type:GLEnum, coords:ConstPtr<GLUInt>):Void;

	@:native('glMultiTexCoordP2ui')
	public extern static function multiTexCoordP2ui(texture:GLEnum, type:GLEnum, coords:GLUInt):Void;

	@:native('glMultiTexCoordP2uiv')
	public extern static function multiTexCoordP2uiv(texture:GLEnum, type:GLEnum, coords:ConstPtr<GLUInt>):Void;

	@:native('glMultiTexCoordP3ui')
	public extern static function multiTexCoordP3ui(texture:GLEnum, type:GLEnum, coords:GLUInt):Void;

	@:native('glMultiTexCoordP3uiv')
	public extern static function multiTexCoordP3uiv(texture:GLEnum, type:GLEnum, coords:ConstPtr<GLUInt>):Void;

	@:native('glMultiTexCoordP4ui')
	public extern static function multiTexCoordP4ui(texture:GLEnum, type:GLEnum, coords:GLUInt):Void;

	@:native('glMultiTexCoordP4uiv')
	public extern static function multiTexCoordP4uiv(texture:GLEnum, type:GLEnum, coords:ConstPtr<GLUInt>):Void;

	@:native('glNormalP3ui')
	public extern static function normalP3ui(type:GLEnum, coords:GLUInt):Void;

	@:native('glNormalP3uiv')
	public extern static function normalP3uiv(type:GLEnum, coords:ConstPtr<GLUInt>):Void;

	@:native('glColorP3ui')
	public extern static function colorP3ui(type:GLEnum, color:GLUInt):Void;

	@:native('glColorP3uiv')
	public extern static function colorP3uiv(type:GLEnum, color:ConstPtr<GLUInt>):Void;

	@:native('glColorP4ui')
	public extern static function colorP4ui(type:GLEnum, color:GLUInt):Void;

	@:native('glColorP4uiv')
	public extern static function colorP4uiv(type:GLEnum, color:ConstPtr<GLUInt>):Void;

	@:native('glSecondaryColorP3ui')
	public extern static function secondaryColorP3ui(type:GLEnum, color:GLUInt):Void;

	@:native('glSecondaryColorP3uiv')
	public extern static function secondaryColorP3uiv(type:GLEnum, color:ConstPtr<GLUInt>):Void;

	@:native('glMinSampleShading')
	public extern static function minSampleShading(value:GLFloat):Void;

	@:native('glBlendEquationi')
	public extern static function blendEquationi(buf:GLUInt, mode:GLEnum):Void;

	@:native('glBlendEquationSeparatei')
	public extern static function blendEquationSeparatei(buf:GLUInt, modeRGB:GLEnum, modeAlpha:GLEnum):Void;

	@:native('glBlendFunci')
	public extern static function blendFunci(buf:GLUInt, src:GLEnum, dst:GLEnum):Void;

	@:native('glBlendFuncSeparatei')
	public extern static function blendFuncSeparatei(buf:GLUInt, srcRGB:GLEnum, dstRGB:GLEnum, srcAlpha:GLEnum, dstAlpha:GLEnum):Void;

	@:native('glDrawArraysIndirect')
	public extern static function drawArraysIndirect(mode:GLEnum, indirect:ConstPtr<Void>):Void;

	@:native('glDrawElementsIndirect')
	public extern static function drawElementsIndirect(mode:GLEnum, type:GLEnum, indirect:ConstPtr<Void>):Void;

	@:native('glUniform1d')
	public extern static function uniform1d(location:GLInt, x:GLDouble):Void;

	@:native('glUniform2d')
	public extern static function uniform2d(location:GLInt, x:GLDouble, y:GLDouble):Void;

	@:native('glUniform3d')
	public extern static function uniform3d(location:GLInt, x:GLDouble, y:GLDouble, z:GLDouble):Void;

	@:native('glUniform4d')
	public extern static function uniform4d(location:GLInt, x:GLDouble, y:GLDouble, z:GLDouble, w:GLDouble):Void;

	@:native('glUniform1dv')
	public extern static function uniform1dv(location:GLInt, count:GLSizeI, value:ConstPtr<GLDouble>):Void;

	@:native('glUniform2dv')
	public extern static function uniform2dv(location:GLInt, count:GLSizeI, value:ConstPtr<GLDouble>):Void;

	@:native('glUniform3dv')
	public extern static function uniform3dv(location:GLInt, count:GLSizeI, value:ConstPtr<GLDouble>):Void;

	@:native('glUniform4dv')
	public extern static function uniform4dv(location:GLInt, count:GLSizeI, value:ConstPtr<GLDouble>):Void;

	@:native('glUniformMatrix2dv')
	public extern static function uniformMatrix2dv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glUniformMatrix3dv')
	public extern static function uniformMatrix3dv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glUniformMatrix4dv')
	public extern static function uniformMatrix4dv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glUniformMatrix2x3dv')
	public extern static function uniformMatrix2x3dv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glUniformMatrix2x4dv')
	public extern static function uniformMatrix2x4dv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glUniformMatrix3x2dv')
	public extern static function uniformMatrix3x2dv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glUniformMatrix3x4dv')
	public extern static function uniformMatrix3x4dv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glUniformMatrix4x2dv')
	public extern static function uniformMatrix4x2dv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glUniformMatrix4x3dv')
	public extern static function uniformMatrix4x3dv(location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glGetUniformdv')
	public extern static function getUniformdv(program:GLUInt, location:GLInt, params:Ptr<GLDouble>):Void;

	@:native('glGetSubroutineUniformLocation')
	public extern static function getSubroutineUniformLocation(program:GLUInt, shadertype:GLEnum, name:ConstCharPtr):GLInt;

	@:native('glGetSubroutineIndex')
	public extern static function getSubroutineIndex(program:GLUInt, shadertype:GLEnum, name:ConstCharPtr):GLUInt;

	@:native('glGetActiveSubroutineUniformiv')
	public extern static function getActiveSubroutineUniformiv(program:GLUInt, shadertype:GLEnum, index:GLUInt, pname:GLEnum, values:Ptr<GLInt>):Void;

	@:native('glGetActiveSubroutineUniformName')
	public extern static function getActiveSubroutineUniformName(program:GLUInt, shadertype:GLEnum, index:GLUInt, bufSize:GLSizeI, length:Ptr<GLSizeI>, name:Ptr<GLChar>):Void;

	@:native('glGetActiveSubroutineName')
	public extern static function getActiveSubroutineName(program:GLUInt, shadertype:GLEnum, index:GLUInt, bufSize:GLSizeI, length:Ptr<GLSizeI>, name:Ptr<GLChar>):Void;

	@:native('glUniformSubroutinesuiv')
	public extern static function uniformSubroutinesuiv(shadertype:GLEnum, count:GLSizeI, indices:ConstPtr<GLUInt>):Void;

	@:native('glGetUniformSubroutineuiv')
	public extern static function getUniformSubroutineuiv(shadertype:GLEnum, location:GLInt, params:Ptr<GLUInt>):Void;

	@:native('glGetProgramStageiv')
	public extern static function getProgramStageiv(program:GLUInt, shadertype:GLEnum, pname:GLEnum, values:Ptr<GLInt>):Void;

	@:native('glPatchParameteri')
	public extern static function patchParameteri(pname:GLEnum, value:GLInt):Void;

	@:native('glPatchParameterfv')
	public extern static function patchParameterfv(pname:GLEnum, values:ConstPtr<GLFloat>):Void;

	@:native('glBindTransformFeedback')
	public extern static function bindTransformFeedback(target:GLEnum, id:GLUInt):Void;

	@:native('glDeleteTransformFeedbacks')
	public extern static function deleteTransformFeedbacks(n:GLSizeI, ids:ConstPtr<GLUInt>):Void;

	@:native('glGenTransformFeedbacks')
	public extern static function genTransformFeedbacks(n:GLSizeI, ids:Ptr<GLUInt>):Void;

	@:native('glIsTransformFeedback')
	public extern static function isTransformFeedback(id:GLUInt):GLBool;

	@:native('glPauseTransformFeedback')
	public extern static function pauseTransformFeedback():Void;

	@:native('glResumeTransformFeedback')
	public extern static function resumeTransformFeedback():Void;

	@:native('glDrawTransformFeedback')
	public extern static function drawTransformFeedback(mode:GLEnum, id:GLUInt):Void;

	@:native('glDrawTransformFeedbackStream')
	public extern static function drawTransformFeedbackStream(mode:GLEnum, id:GLUInt, stream:GLUInt):Void;

	@:native('glBeginQueryIndexed')
	public extern static function beginQueryIndexed(target:GLEnum, index:GLUInt, id:GLUInt):Void;

	@:native('glEndQueryIndexed')
	public extern static function endQueryIndexed(target:GLEnum, index:GLUInt):Void;

	@:native('glGetQueryIndexediv')
	public extern static function getQueryIndexediv(target:GLEnum, index:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glReleaseShaderCompiler')
	public extern static function releaseShaderCompiler():Void;

	@:native('glShaderBinary')
	public extern static function shaderBinary(count:GLSizeI, shaders:ConstPtr<GLUInt>, binaryFormat:GLEnum, binary:ConstPtr<Void>, length:GLSizeI):Void;

	@:native('glGetShaderPrecisionFormat')
	public extern static function getShaderPrecisionFormat(shadertype:GLEnum, precisiontype:GLEnum, range:Ptr<GLInt>, precision:Ptr<GLInt>):Void;

	@:native('glDepthRangef')
	public extern static function depthRangef(n:GLFloat, f:GLFloat):Void;

	@:native('glClearDepthf')
	public extern static function clearDepthf(d:GLFloat):Void;

	@:native('glGetProgramBinary')
	public extern static function getProgramBinary(program:GLUInt, bufSize:GLSizeI, length:Ptr<GLSizeI>, binaryFormat:Ptr<GLEnum>, binary:Ptr<Void>):Void;

	@:native('glProgramBinary')
	public extern static function programBinary(program:GLUInt, binaryFormat:GLEnum, binary:ConstPtr<Void>, length:GLSizeI):Void;

	@:native('glProgramParameteri')
	public extern static function programParameteri(program:GLUInt, pname:GLEnum, value:GLInt):Void;

	@:native('glUseProgramStages')
	public extern static function useProgramStages(pipeline:GLUInt, stages:GLBitField, program:GLUInt):Void;

	@:native('glActiveShaderProgram')
	public extern static function activeShaderProgram(pipeline:GLUInt, program:GLUInt):Void;

	@:native('glCreateShaderProgramv')
	public extern static function createShaderProgramv(type:GLEnum, count:GLSizeI, strings:Ptr<ConstCharPtr>):GLUInt;

	@:native('glBindProgramPipeline')
	public extern static function bindProgramPipeline(pipeline:GLUInt):Void;

	@:native('glDeleteProgramPipelines')
	public extern static function deleteProgramPipelines(n:GLSizeI, pipelines:ConstPtr<GLUInt>):Void;

	@:native('glGenProgramPipelines')
	public extern static function genProgramPipelines(n:GLSizeI, pipelines:Ptr<GLUInt>):Void;

	@:native('glIsProgramPipeline')
	public extern static function isProgramPipeline(pipeline:GLUInt):GLBool;

	@:native('glGetProgramPipelineiv')
	public extern static function getProgramPipelineiv(pipeline:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glProgramUniform1i')
	public extern static function programUniform1i(program:GLUInt, location:GLInt, v0:GLInt):Void;

	@:native('glProgramUniform1iv')
	public extern static function programUniform1iv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLInt>):Void;

	@:native('glProgramUniform1f')
	public extern static function programUniform1f(program:GLUInt, location:GLInt, v0:GLFloat):Void;

	@:native('glProgramUniform1fv')
	public extern static function programUniform1fv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLFloat>):Void;

	@:native('glProgramUniform1d')
	public extern static function programUniform1d(program:GLUInt, location:GLInt, v0:GLDouble):Void;

	@:native('glProgramUniform1dv')
	public extern static function programUniform1dv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLDouble>):Void;

	@:native('glProgramUniform1ui')
	public extern static function programUniform1ui(program:GLUInt, location:GLInt, v0:GLUInt):Void;

	@:native('glProgramUniform1uiv')
	public extern static function programUniform1uiv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLUInt>):Void;

	@:native('glProgramUniform2i')
	public extern static function programUniform2i(program:GLUInt, location:GLInt, v0:GLInt, v1:GLInt):Void;

	@:native('glProgramUniform2iv')
	public extern static function programUniform2iv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLInt>):Void;

	@:native('glProgramUniform2f')
	public extern static function programUniform2f(program:GLUInt, location:GLInt, v0:GLFloat, v1:GLFloat):Void;

	@:native('glProgramUniform2fv')
	public extern static function programUniform2fv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLFloat>):Void;

	@:native('glProgramUniform2d')
	public extern static function programUniform2d(program:GLUInt, location:GLInt, v0:GLDouble, v1:GLDouble):Void;

	@:native('glProgramUniform2dv')
	public extern static function programUniform2dv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLDouble>):Void;

	@:native('glProgramUniform2ui')
	public extern static function programUniform2ui(program:GLUInt, location:GLInt, v0:GLUInt, v1:GLUInt):Void;

	@:native('glProgramUniform2uiv')
	public extern static function programUniform2uiv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLUInt>):Void;

	@:native('glProgramUniform3i')
	public extern static function programUniform3i(program:GLUInt, location:GLInt, v0:GLInt, v1:GLInt, v2:GLInt):Void;

	@:native('glProgramUniform3iv')
	public extern static function programUniform3iv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLInt>):Void;

	@:native('glProgramUniform3f')
	public extern static function programUniform3f(program:GLUInt, location:GLInt, v0:GLFloat, v1:GLFloat, v2:GLFloat):Void;

	@:native('glProgramUniform3fv')
	public extern static function programUniform3fv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLFloat>):Void;

	@:native('glProgramUniform3d')
	public extern static function programUniform3d(program:GLUInt, location:GLInt, v0:GLDouble, v1:GLDouble, v2:GLDouble):Void;

	@:native('glProgramUniform3dv')
	public extern static function programUniform3dv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLDouble>):Void;

	@:native('glProgramUniform3ui')
	public extern static function programUniform3ui(program:GLUInt, location:GLInt, v0:GLUInt, v1:GLUInt, v2:GLUInt):Void;

	@:native('glProgramUniform3uiv')
	public extern static function programUniform3uiv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLUInt>):Void;

	@:native('glProgramUniform4i')
	public extern static function programUniform4i(program:GLUInt, location:GLInt, v0:GLInt, v1:GLInt, v2:GLInt, v3:GLInt):Void;

	@:native('glProgramUniform4iv')
	public extern static function programUniform4iv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLInt>):Void;

	@:native('glProgramUniform4f')
	public extern static function programUniform4f(program:GLUInt, location:GLInt, v0:GLFloat, v1:GLFloat, v2:GLFloat, v3:GLFloat):Void;

	@:native('glProgramUniform4fv')
	public extern static function programUniform4fv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLFloat>):Void;

	@:native('glProgramUniform4d')
	public extern static function programUniform4d(program:GLUInt, location:GLInt, v0:GLDouble, v1:GLDouble, v2:GLDouble, v3:GLDouble):Void;

	@:native('glProgramUniform4dv')
	public extern static function programUniform4dv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLDouble>):Void;

	@:native('glProgramUniform4ui')
	public extern static function programUniform4ui(program:GLUInt, location:GLInt, v0:GLUInt, v1:GLUInt, v2:GLUInt, v3:GLUInt):Void;

	@:native('glProgramUniform4uiv')
	public extern static function programUniform4uiv(program:GLUInt, location:GLInt, count:GLSizeI, value:ConstPtr<GLUInt>):Void;

	@:native('glProgramUniformMatrix2fv')
	public extern static function programUniformMatrix2fv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glProgramUniformMatrix3fv')
	public extern static function programUniformMatrix3fv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glProgramUniformMatrix4fv')
	public extern static function programUniformMatrix4fv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glProgramUniformMatrix2dv')
	public extern static function programUniformMatrix2dv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glProgramUniformMatrix3dv')
	public extern static function programUniformMatrix3dv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glProgramUniformMatrix4dv')
	public extern static function programUniformMatrix4dv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glProgramUniformMatrix2x3fv')
	public extern static function programUniformMatrix2x3fv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glProgramUniformMatrix3x2fv')
	public extern static function programUniformMatrix3x2fv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glProgramUniformMatrix2x4fv')
	public extern static function programUniformMatrix2x4fv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glProgramUniformMatrix4x2fv')
	public extern static function programUniformMatrix4x2fv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glProgramUniformMatrix3x4fv')
	public extern static function programUniformMatrix3x4fv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glProgramUniformMatrix4x3fv')
	public extern static function programUniformMatrix4x3fv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLFloat>):Void;

	@:native('glProgramUniformMatrix2x3dv')
	public extern static function programUniformMatrix2x3dv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glProgramUniformMatrix3x2dv')
	public extern static function programUniformMatrix3x2dv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glProgramUniformMatrix2x4dv')
	public extern static function programUniformMatrix2x4dv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glProgramUniformMatrix4x2dv')
	public extern static function programUniformMatrix4x2dv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glProgramUniformMatrix3x4dv')
	public extern static function programUniformMatrix3x4dv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glProgramUniformMatrix4x3dv')
	public extern static function programUniformMatrix4x3dv(program:GLUInt, location:GLInt, count:GLSizeI, transpose:GLBool, value:ConstPtr<GLDouble>):Void;

	@:native('glValidateProgramPipeline')
	public extern static function validateProgramPipeline(pipeline:GLUInt):Void;

	@:native('glGetProgramPipelineInfoLog')
	public extern static function getProgramPipelineInfoLog(pipeline:GLUInt, bufSize:GLSizeI, length:Ptr<GLSizeI>, infoLog:Ptr<GLChar>):Void;

	@:native('glVertexAttribL1d')
	public extern static function vertexAttribL1d(index:GLUInt, x:GLDouble):Void;

	@:native('glVertexAttribL2d')
	public extern static function vertexAttribL2d(index:GLUInt, x:GLDouble, y:GLDouble):Void;

	@:native('glVertexAttribL3d')
	public extern static function vertexAttribL3d(index:GLUInt, x:GLDouble, y:GLDouble, z:GLDouble):Void;

	@:native('glVertexAttribL4d')
	public extern static function vertexAttribL4d(index:GLUInt, x:GLDouble, y:GLDouble, z:GLDouble, w:GLDouble):Void;

	@:native('glVertexAttribL1dv')
	public extern static function vertexAttribL1dv(index:GLUInt, v:ConstPtr<GLDouble>):Void;

	@:native('glVertexAttribL2dv')
	public extern static function vertexAttribL2dv(index:GLUInt, v:ConstPtr<GLDouble>):Void;

	@:native('glVertexAttribL3dv')
	public extern static function vertexAttribL3dv(index:GLUInt, v:ConstPtr<GLDouble>):Void;

	@:native('glVertexAttribL4dv')
	public extern static function vertexAttribL4dv(index:GLUInt, v:ConstPtr<GLDouble>):Void;

	@:native('glVertexAttribLPointer')
	public extern static function vertexAttribLPointer(index:GLUInt, size:GLInt, type:GLEnum, stride:GLSizeI, Ptr:ConstPtr<Void>):Void;

	@:native('glGetVertexAttribLdv')
	public extern static function getVertexAttribLdv(index:GLUInt, pname:GLEnum, params:Ptr<GLDouble>):Void;

	@:native('glViewportArrayv')
	public extern static function viewportArrayv(first:GLUInt, count:GLSizeI, v:ConstPtr<GLFloat>):Void;

	@:native('glViewportIndexedf')
	public extern static function viewportIndexedf(index:GLUInt, x:GLFloat, y:GLFloat, w:GLFloat, h:GLFloat):Void;

	@:native('glViewportIndexedfv')
	public extern static function viewportIndexedfv(index:GLUInt, v:ConstPtr<GLFloat>):Void;

	@:native('glScissorArrayv')
	public extern static function scissorArrayv(first:GLUInt, count:GLSizeI, v:ConstPtr<GLInt>):Void;

	@:native('glScissorIndexed')
	public extern static function scissorIndexed(index:GLUInt, left:GLInt, bottom:GLInt, width:GLSizeI, height:GLSizeI):Void;

	@:native('glScissorIndexedv')
	public extern static function scissorIndexedv(index:GLUInt, v:ConstPtr<GLInt>):Void;

	@:native('glDepthRangeArrayv')
	public extern static function depthRangeArrayv(first:GLUInt, count:GLSizeI, v:ConstPtr<GLDouble>):Void;

	@:native('glDepthRangeIndexed')
	public extern static function depthRangeIndexed(index:GLUInt, n:GLDouble, f:GLDouble):Void;

	@:native('glGetFloati_v')
	public extern static function getFloati_v(target:GLEnum, index:GLUInt, data:Ptr<GLFloat>):Void;

	@:native('glGetDoublei_v')
	public extern static function getDoublei_v(target:GLEnum, index:GLUInt, data:Ptr<GLDouble>):Void;

	@:native('glDrawArraysInstancedBaseInstance')
	public extern static function drawArraysInstancedBaseInstance(mode:GLEnum, first:GLInt, count:GLSizeI, instancecount:GLSizeI, baseinstance:GLUInt):Void;

	@:native('glDrawElementsInstancedBaseInstance')
	public extern static function drawElementsInstancedBaseInstance(mode:GLEnum, count:GLSizeI, type:GLEnum, indices:ConstPtr<Void>, instancecount:GLSizeI, baseinstance:GLUInt):Void;

	@:native('glDrawElementsInstancedBaseVertexBaseInstance')
	public extern static function drawElementsInstancedBaseVertexBaseInstance(mode:GLEnum, count:GLSizeI, type:GLEnum, indices:ConstPtr<Void>, instancecount:GLSizeI, basevertex:GLInt, baseinstance:GLUInt):Void;

	@:native('glGetInternalformativ')
	public extern static function getInternalformativ(target:GLEnum, internalformat:GLEnum, pname:GLEnum, count:GLSizeI, params:Ptr<GLInt>):Void;

	@:native('glGetActiveAtomicCounterBufferiv')
	public extern static function getActiveAtomicCounterBufferiv(program:GLUInt, bufferIndex:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glBindImageTexture')
	public extern static function bindImageTexture(unit:GLUInt, texture:GLUInt, level:GLInt, layered:GLBool, layer:GLInt, access:GLEnum, format:GLEnum):Void;

	@:native('glMemoryBarrier')
	public extern static function memoryBarrier(barriers:GLBitField):Void;

	@:native('glTexStorage1D')
	public extern static function texStorage1D(target:GLEnum, levels:GLSizeI, internalformat:GLEnum, width:GLSizeI):Void;

	@:native('glTexStorage2D')
	public extern static function texStorage2D(target:GLEnum, levels:GLSizeI, internalformat:GLEnum, width:GLSizeI, height:GLSizeI):Void;

	@:native('glTexStorage3D')
	public extern static function texStorage3D(target:GLEnum, levels:GLSizeI, internalformat:GLEnum, width:GLSizeI, height:GLSizeI, depth:GLSizeI):Void;

	@:native('glDrawTransformFeedbackInstanced')
	public extern static function drawTransformFeedbackInstanced(mode:GLEnum, id:GLUInt, instancecount:GLSizeI):Void;

	@:native('glDrawTransformFeedbackStreamInstanced')
	public extern static function drawTransformFeedbackStreamInstanced(mode:GLEnum, id:GLUInt, stream:GLUInt, instancecount:GLSizeI):Void;

	@:native('glClearBufferData')
	public extern static function clearBufferData(target:GLEnum, internalformat:GLEnum, format:GLEnum, type:GLEnum, data:ConstPtr<Void>):Void;

	@:native('glClearBufferSubData')
	public extern static function clearBufferSubData(target:GLEnum, internalformat:GLEnum, offset:GLIntPointer, size:GLSizeIPointer, format:GLEnum, type:GLEnum, data:ConstPtr<Void>):Void;

	@:native('glDispatchCompute')
	public extern static function dispatchCompute(num_groups_x:GLUInt, num_groups_y:GLUInt, num_groups_z:GLUInt):Void;

	@:native('glDispatchComputeIndirect')
	public extern static function dispatchComputeIndirect(indirect:GLIntPointer):Void;

	@:native('glCopyImageSubData')
	public extern static function copyImageSubData(srcName:GLUInt, srcTarget:GLEnum, srcLevel:GLInt, srcX:GLInt, srcY:GLInt, srcZ:GLInt, dstName:GLUInt, dstTarget:GLEnum, dstLevel:GLInt, dstX:GLInt, dstY:GLInt, dstZ:GLInt, srcWidth:GLSizeI, srcHeight:GLSizeI, srcDepth:GLSizeI):Void;

	@:native('glFramebufferParameteri')
	public extern static function framebufferParameteri(target:GLEnum, pname:GLEnum, param:GLInt):Void;

	@:native('glGetFramebufferParameteriv')
	public extern static function getFramebufferParameteriv(target:GLEnum, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetInternalformati64v')
	public extern static function getInternalformati64v(target:GLEnum, internalformat:GLEnum, pname:GLEnum, count:GLSizeI, params:Ptr<Int64>):Void;

	@:native('glInvalidateTexSubImage')
	public extern static function invalidateTexSubImage(texture:GLUInt, level:GLInt, xoffset:GLInt, yoffset:GLInt, zoffset:GLInt, width:GLSizeI, height:GLSizeI, depth:GLSizeI):Void;

	@:native('glInvalidateTexImage')
	public extern static function invalidateTexImage(texture:GLUInt, level:GLInt):Void;

	@:native('glInvalidateBufferSubData')
	public extern static function invalidateBufferSubData(buffer:GLUInt, offset:GLIntPointer, length:GLSizeIPointer):Void;

	@:native('glInvalidateBufferData')
	public extern static function invalidateBufferData(buffer:GLUInt):Void;

	@:native('glInvalidateFramebuffer')
	public extern static function invalidateFramebuffer(target:GLEnum, numAttachments:GLSizeI, attachments:ConstPtr<GLEnum>):Void;

	@:native('glInvalidateSubFramebuffer')
	public extern static function invalidateSubFramebuffer(target:GLEnum, numAttachments:GLSizeI, attachments:ConstPtr<GLEnum>, x:GLInt, y:GLInt, width:GLSizeI, height:GLSizeI):Void;

	@:native('glMultiDrawArraysIndirect')
	public extern static function multiDrawArraysIndirect(mode:GLEnum, indirect:ConstPtr<Void>, drawcount:GLSizeI, stride:GLSizeI):Void;

	@:native('glMultiDrawElementsIndirect')
	public extern static function multiDrawElementsIndirect(mode:GLEnum, type:GLEnum, indirect:ConstPtr<Void>, drawcount:GLSizeI, stride:GLSizeI):Void;

	@:native('glGetProgramInterfaceiv')
	public extern static function getProgramInterfaceiv(program:GLUInt, programInterface:GLEnum, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetProgramResourceIndex')
	public extern static function getProgramResourceIndex(program:GLUInt, programInterface:GLEnum, name:ConstCharPtr):GLUInt;

	@:native('glGetProgramResourceName')
	public extern static function getProgramResourceName(program:GLUInt, programInterface:GLEnum, index:GLUInt, bufSize:GLSizeI, length:Ptr<GLSizeI>, name:Ptr<GLChar>):Void;

	@:native('glGetProgramResourceiv')
	public extern static function getProgramResourceiv(program:GLUInt, programInterface:GLEnum, index:GLUInt, propCount:GLSizeI, props:ConstPtr<GLEnum>, count:GLSizeI, length:Ptr<GLSizeI>, params:Ptr<GLInt>):Void;

	@:native('glGetProgramResourceLocation')
	public extern static function getProgramResourceLocation(program:GLUInt, programInterface:GLEnum, name:ConstCharPtr):GLInt;

	@:native('glGetProgramResourceLocationIndex')
	public extern static function getProgramResourceLocationIndex(program:GLUInt, programInterface:GLEnum, name:ConstCharPtr):GLInt;

	@:native('glShaderStorageBlockBinding')
	public extern static function shaderStorageBlockBinding(program:GLUInt, storageBlockIndex:GLUInt, storageBlockBinding:GLUInt):Void;

	@:native('glTexBufferRange')
	public extern static function texBufferRange(target:GLEnum, internalformat:GLEnum, buffer:GLUInt, offset:GLIntPointer, size:GLSizeIPointer):Void;

	@:native('glTexStorage2DMultisample')
	public extern static function texStorage2DMultisample(target:GLEnum, samples:GLSizeI, internalformat:GLEnum, width:GLSizeI, height:GLSizeI, fixedsamplelocations:GLBool):Void;

	@:native('glTexStorage3DMultisample')
	public extern static function texStorage3DMultisample(target:GLEnum, samples:GLSizeI, internalformat:GLEnum, width:GLSizeI, height:GLSizeI, depth:GLSizeI, fixedsamplelocations:GLBool):Void;

	@:native('glTextureView')
	public extern static function textureView(texture:GLUInt, target:GLEnum, origtexture:GLUInt, internalformat:GLEnum, minlevel:GLUInt, numlevels:GLUInt, minlayer:GLUInt, numlayers:GLUInt):Void;

	@:native('glBindVertexBuffer')
	public extern static function bindVertexBuffer(bindingindex:GLUInt, buffer:GLUInt, offset:GLIntPointer, stride:GLSizeI):Void;

	@:native('glVertexAttribFormat')
	public extern static function vertexAttribFormat(attribindex:GLUInt, size:GLInt, type:GLEnum, normalized:GLBool, relativeoffset:GLUInt):Void;

	@:native('glVertexAttribIFormat')
	public extern static function vertexAttribIFormat(attribindex:GLUInt, size:GLInt, type:GLEnum, relativeoffset:GLUInt):Void;

	@:native('glVertexAttribLFormat')
	public extern static function vertexAttribLFormat(attribindex:GLUInt, size:GLInt, type:GLEnum, relativeoffset:GLUInt):Void;

	@:native('glVertexAttribBinding')
	public extern static function vertexAttribBinding(attribindex:GLUInt, bindingindex:GLUInt):Void;

	@:native('glVertexBindingDivisor')
	public extern static function vertexBindingDivisor(bindingindex:GLUInt, divisor:GLUInt):Void;

	@:native('glDebugMessageControl')
	public extern static function debugMessageControl(source:GLEnum, type:GLEnum, severity:GLEnum, count:GLSizeI, ids:ConstPtr<GLUInt>, enabled:GLBool):Void;

	@:native('glDebugMessageInsert')
	public extern static function debugMessageInsert(source:GLEnum, type:GLEnum, id:GLUInt, severity:GLEnum, length:GLSizeI, buf:ConstCharPtr):Void;

	@:native('glDebugMessageCallback')
	public extern static function debugMessageCallback(callback:GLDebugProc, userParam:ConstPtr<Void>):Void;

	@:native('glGetDebugMessageLog')
	public extern static function getDebugMessageLog(count:GLUInt, bufSize:GLSizeI, sources:Ptr<GLEnum>, types:Ptr<GLEnum>, ids:Ptr<GLUInt>, severities:Ptr<GLEnum>, lengths:Ptr<GLSizeI>, messageLog:Ptr<GLChar>):GLUInt;

	@:native('glPushDebugGroup')
	public extern static function pushDebugGroup(source:GLEnum, id:GLUInt, length:GLSizeI, message:ConstCharPtr):Void;

	@:native('glPopDebugGroup')
	public extern static function popDebugGroup():Void;

	@:native('glObjectLabel')
	public extern static function objectLabel(identifier:GLEnum, name:GLUInt, length:GLSizeI, label:ConstCharPtr):Void;

	@:native('glGetObjectLabel')
	public extern static function getObjectLabel(identifier:GLEnum, name:GLUInt, bufSize:GLSizeI, length:Ptr<GLSizeI>, label:Ptr<GLChar>):Void;

	@:native('glObjectPtrLabel')
	public extern static function objectPtrLabel(ptr:ConstPtr<Void>, length:GLSizeI, label:ConstCharPtr):Void;

	@:native('glGetObjectPtrLabel')
	public extern static function getObjectPtrLabel(ptr:ConstPtr<Void>, bufSize:GLSizeI, length:Ptr<GLSizeI>, label:Ptr<GLChar>):Void;

	@:native('glGetPointerv')
	public extern static function getPointerv(pname:GLEnum, params:Ptr<Ptr<Void>>):Void;

	@:native('glBufferStorage')
	public extern static function bufferStorage(target:GLEnum, size:GLSizeIPointer, data:ConstPtr<Void>, flags:GLBitField):Void;

	@:native('glClearTexImage')
	public extern static function clearTexImage(texture:GLUInt, level:GLInt, format:GLEnum, type:GLEnum, data:ConstPtr<Void>):Void;

	@:native('glClearTexSubImage')
	public extern static function clearTexSubImage(texture:GLUInt, level:GLInt, xoffset:GLInt, yoffset:GLInt, zoffset:GLInt, width:GLSizeI, height:GLSizeI, depth:GLSizeI, format:GLEnum, type:GLEnum, data:ConstPtr<Void>):Void;

	@:native('glBindBuffersBase')
	public extern static function bindBuffersBase(target:GLEnum, first:GLUInt, count:GLSizeI, buffers:ConstPtr<GLUInt>):Void;

	@:native('glBindBuffersRange')
	public extern static function bindBuffersRange(target:GLEnum, first:GLUInt, count:GLSizeI, buffers:ConstPtr<GLUInt>, offsets:ConstPtr<GLIntPointer>, sizes:ConstPtr<GLSizeIPointer>):Void;

	@:native('glBindTextures')
	public extern static function bindTextures(first:GLUInt, count:GLSizeI, textures:ConstPtr<GLUInt>):Void;

	@:native('glBindSamplers')
	public extern static function bindSamplers(first:GLUInt, count:GLSizeI, samplers:ConstPtr<GLUInt>):Void;

	@:native('glBindImageTextures')
	public extern static function bindImageTextures(first:GLUInt, count:GLSizeI, textures:ConstPtr<GLUInt>):Void;

	@:native('glBindVertexBuffers')
	public extern static function bindVertexBuffers(first:GLUInt, count:GLSizeI, buffers:ConstPtr<GLUInt>, offsets:ConstPtr<GLIntPointer>, strides:ConstPtr<GLSizeI>):Void;

	@:native('glClipControl')
	public extern static function clipControl(origin:GLEnum, depth:GLEnum):Void;

	@:native('glCreateTransformFeedbacks')
	public extern static function createTransformFeedbacks(n:GLSizeI, ids:Ptr<GLUInt>):Void;

	@:native('glTransformFeedbackBufferBase')
	public extern static function transformFeedbackBufferBase(xfb:GLUInt, index:GLUInt, buffer:GLUInt):Void;

	@:native('glTransformFeedbackBufferRange')
	public extern static function transformFeedbackBufferRange(xfb:GLUInt, index:GLUInt, buffer:GLUInt, offset:GLIntPointer, size:GLSizeIPointer):Void;

	@:native('glGetTransformFeedbackiv')
	public extern static function getTransformFeedbackiv(xfb:GLUInt, pname:GLEnum, param:Ptr<GLInt>):Void;

	@:native('glGetTransformFeedbacki_v')
	public extern static function getTransformFeedbacki_v(xfb:GLUInt, pname:GLEnum, index:GLUInt, param:Ptr<GLInt>):Void;

	@:native('glGetTransformFeedbacki64_v')
	public extern static function getTransformFeedbacki64_v(xfb:GLUInt, pname:GLEnum, index:GLUInt, param:Ptr<Int64>):Void;

	@:native('glCreateBuffers')
	public extern static function createBuffers(n:GLSizeI, buffers:Ptr<GLUInt>):Void;

	@:native('glNamedBufferStorage')
	public extern static function namedBufferStorage(buffer:GLUInt, size:GLSizeIPointer, data:ConstPtr<Void>, flags:GLBitField):Void;

	@:native('glNamedBufferData')
	public extern static function namedBufferData(buffer:GLUInt, size:GLSizeIPointer, data:ConstPtr<Void>, usage:GLEnum):Void;

	@:native('glNamedBufferSubData')
	public extern static function namedBufferSubData(buffer:GLUInt, offset:GLIntPointer, size:GLSizeIPointer, data:ConstPtr<Void>):Void;

	@:native('glCopyNamedBufferSubData')
	public extern static function copyNamedBufferSubData(readBuffer:GLUInt, writeBuffer:GLUInt, readOffset:GLIntPointer, writeOffset:GLIntPointer, size:GLSizeIPointer):Void;

	@:native('glClearNamedBufferData')
	public extern static function clearNamedBufferData(buffer:GLUInt, internalformat:GLEnum, format:GLEnum, type:GLEnum, data:ConstPtr<Void>):Void;

	@:native('glClearNamedBufferSubData')
	public extern static function clearNamedBufferSubData(buffer:GLUInt, internalformat:GLEnum, offset:GLIntPointer, size:GLSizeIPointer, format:GLEnum, type:GLEnum, data:ConstPtr<Void>):Void;

	@:native('glMapNamedBuffer')
	public extern static function mapNamedBuffer(buffer:GLUInt, access:GLEnum):Ptr<Void>;

	@:native('glMapNamedBufferRange')
	public extern static function mapNamedBufferRange(buffer:GLUInt, offset:GLIntPointer, length:GLSizeIPointer, access:GLBitField):Ptr<Void>;

	@:native('glUnmapNamedBuffer')
	public extern static function unmapNamedBuffer(buffer:GLUInt):GLBool;

	@:native('glFlushMappedNamedBufferRange')
	public extern static function flushMappedNamedBufferRange(buffer:GLUInt, offset:GLIntPointer, length:GLSizeIPointer):Void;

	@:native('glGetNamedBufferParameteriv')
	public extern static function getNamedBufferParameteriv(buffer:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetNamedBufferParameteri64v')
	public extern static function getNamedBufferParameteri64v(buffer:GLUInt, pname:GLEnum, params:Ptr<Int64>):Void;

	@:native('glGetNamedBufferPointerv')
	public extern static function getNamedBufferPointerv(buffer:GLUInt, pname:GLEnum, params:Ptr<Ptr<Void>>):Void;

	@:native('glGetNamedBufferSubData')
	public extern static function getNamedBufferSubData(buffer:GLUInt, offset:GLIntPointer, size:GLSizeIPointer, data:Ptr<Void>):Void;

	@:native('glCreateFramebuffers')
	public extern static function createFramebuffers(n:GLSizeI, framebuffers:Ptr<GLUInt>):Void;

	@:native('glNamedFramebufferRenderbuffer')
	public extern static function namedFramebufferRenderbuffer(framebuffer:GLUInt, attachment:GLEnum, renderbuffertarget:GLEnum, renderbuffer:GLUInt):Void;

	@:native('glNamedFramebufferParameteri')
	public extern static function namedFramebufferParameteri(framebuffer:GLUInt, pname:GLEnum, param:GLInt):Void;

	@:native('glNamedFramebufferTexture')
	public extern static function namedFramebufferTexture(framebuffer:GLUInt, attachment:GLEnum, texture:GLUInt, level:GLInt):Void;

	@:native('glNamedFramebufferTextureLayer')
	public extern static function namedFramebufferTextureLayer(framebuffer:GLUInt, attachment:GLEnum, texture:GLUInt, level:GLInt, layer:GLInt):Void;

	@:native('glNamedFramebufferDrawBuffer')
	public extern static function namedFramebufferDrawBuffer(framebuffer:GLUInt, buf:GLEnum):Void;

	@:native('glNamedFramebufferDrawBuffers')
	public extern static function namedFramebufferDrawBuffers(framebuffer:GLUInt, n:GLSizeI, bufs:ConstPtr<GLEnum>):Void;

	@:native('glNamedFramebufferReadBuffer')
	public extern static function namedFramebufferReadBuffer(framebuffer:GLUInt, src:GLEnum):Void;

	@:native('glInvalidateNamedFramebufferData')
	public extern static function invalidateNamedFramebufferData(framebuffer:GLUInt, numAttachments:GLSizeI, attachments:ConstPtr<GLEnum>):Void;

	@:native('glInvalidateNamedFramebufferSubData')
	public extern static function invalidateNamedFramebufferSubData(framebuffer:GLUInt, numAttachments:GLSizeI, attachments:ConstPtr<GLEnum>, x:GLInt, y:GLInt, width:GLSizeI, height:GLSizeI):Void;

	@:native('glClearNamedFramebufferiv')
	public extern static function clearNamedFramebufferiv(framebuffer:GLUInt, buffer:GLEnum, drawbuffer:GLInt, value:ConstPtr<GLInt>):Void;

	@:native('glClearNamedFramebufferuiv')
	public extern static function clearNamedFramebufferuiv(framebuffer:GLUInt, buffer:GLEnum, drawbuffer:GLInt, value:ConstPtr<GLUInt>):Void;

	@:native('glClearNamedFramebufferfv')
	public extern static function clearNamedFramebufferfv(framebuffer:GLUInt, buffer:GLEnum, drawbuffer:GLInt, value:ConstPtr<GLFloat>):Void;

	@:native('glClearNamedFramebufferfi')
	public extern static function clearNamedFramebufferfi(framebuffer:GLUInt, buffer:GLEnum, drawbuffer:GLInt, depth:GLFloat, stencil:GLInt):Void;

	@:native('glBlitNamedFramebuffer')
	public extern static function blitNamedFramebuffer(readFramebuffer:GLUInt, drawFramebuffer:GLUInt, srcX0:GLInt, srcY0:GLInt, srcX1:GLInt, srcY1:GLInt, dstX0:GLInt, dstY0:GLInt, dstX1:GLInt, dstY1:GLInt, mask:GLBitField, filter:GLEnum):Void;

	@:native('glCheckNamedFramebufferStatus')
	public extern static function checkNamedFramebufferStatus(framebuffer:GLUInt, target:GLEnum):GLEnum;

	@:native('glGetNamedFramebufferParameteriv')
	public extern static function getNamedFramebufferParameteriv(framebuffer:GLUInt, pname:GLEnum, param:Ptr<GLInt>):Void;

	@:native('glGetNamedFramebufferAttachmentParameteriv')
	public extern static function getNamedFramebufferAttachmentParameteriv(framebuffer:GLUInt, attachment:GLEnum, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glCreateRenderbuffers')
	public extern static function createRenderbuffers(n:GLSizeI, renderbuffers:Ptr<GLUInt>):Void;

	@:native('glNamedRenderbufferStorage')
	public extern static function namedRenderbufferStorage(renderbuffer:GLUInt, internalformat:GLEnum, width:GLSizeI, height:GLSizeI):Void;

	@:native('glNamedRenderbufferStorageMultisample')
	public extern static function namedRenderbufferStorageMultisample(renderbuffer:GLUInt, samples:GLSizeI, internalformat:GLEnum, width:GLSizeI, height:GLSizeI):Void;

	@:native('glGetNamedRenderbufferParameteriv')
	public extern static function getNamedRenderbufferParameteriv(renderbuffer:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glCreateTextures')
	public extern static function createTextures(target:GLEnum, n:GLSizeI, textures:Ptr<GLUInt>):Void;

	@:native('glTextureBuffer')
	public extern static function textureBuffer(texture:GLUInt, internalformat:GLEnum, buffer:GLUInt):Void;

	@:native('glTextureBufferRange')
	public extern static function textureBufferRange(texture:GLUInt, internalformat:GLEnum, buffer:GLUInt, offset:GLIntPointer, size:GLSizeIPointer):Void;

	@:native('glTextureStorage1D')
	public extern static function textureStorage1D(texture:GLUInt, levels:GLSizeI, internalformat:GLEnum, width:GLSizeI):Void;

	@:native('glTextureStorage2D')
	public extern static function textureStorage2D(texture:GLUInt, levels:GLSizeI, internalformat:GLEnum, width:GLSizeI, height:GLSizeI):Void;

	@:native('glTextureStorage3D')
	public extern static function textureStorage3D(texture:GLUInt, levels:GLSizeI, internalformat:GLEnum, width:GLSizeI, height:GLSizeI, depth:GLSizeI):Void;

	@:native('glTextureStorage2DMultisample')
	public extern static function textureStorage2DMultisample(texture:GLUInt, samples:GLSizeI, internalformat:GLEnum, width:GLSizeI, height:GLSizeI, fixedsamplelocations:GLBool):Void;

	@:native('glTextureStorage3DMultisample')
	public extern static function textureStorage3DMultisample(texture:GLUInt, samples:GLSizeI, internalformat:GLEnum, width:GLSizeI, height:GLSizeI, depth:GLSizeI, fixedsamplelocations:GLBool):Void;

	@:native('glTextureSubImage1D')
	public extern static function textureSubImage1D(texture:GLUInt, level:GLInt, xoffset:GLInt, width:GLSizeI, format:GLEnum, type:GLEnum, pixels:ConstPtr<Void>):Void;

	@:native('glTextureSubImage2D')
	public extern static function textureSubImage2D(texture:GLUInt, level:GLInt, xoffset:GLInt, yoffset:GLInt, width:GLSizeI, height:GLSizeI, format:GLEnum, type:GLEnum, pixels:ConstPtr<Void>):Void;

	@:native('glTextureSubImage3D')
	public extern static function textureSubImage3D(texture:GLUInt, level:GLInt, xoffset:GLInt, yoffset:GLInt, zoffset:GLInt, width:GLSizeI, height:GLSizeI, depth:GLSizeI, format:GLEnum, type:GLEnum, pixels:ConstPtr<Void>):Void;

	@:native('glCompressedTextureSubImage1D')
	public extern static function compressedTextureSubImage1D(texture:GLUInt, level:GLInt, xoffset:GLInt, width:GLSizeI, format:GLEnum, imageSize:GLSizeI, data:ConstPtr<Void>):Void;

	@:native('glCompressedTextureSubImage2D')
	public extern static function compressedTextureSubImage2D(texture:GLUInt, level:GLInt, xoffset:GLInt, yoffset:GLInt, width:GLSizeI, height:GLSizeI, format:GLEnum, imageSize:GLSizeI, data:ConstPtr<Void>):Void;

	@:native('glCompressedTextureSubImage3D')
	public extern static function compressedTextureSubImage3D(texture:GLUInt, level:GLInt, xoffset:GLInt, yoffset:GLInt, zoffset:GLInt, width:GLSizeI, height:GLSizeI, depth:GLSizeI, format:GLEnum, imageSize:GLSizeI, data:ConstPtr<Void>):Void;

	@:native('glCopyTextureSubImage1D')
	public extern static function copyTextureSubImage1D(texture:GLUInt, level:GLInt, xoffset:GLInt, x:GLInt, y:GLInt, width:GLSizeI):Void;

	@:native('glCopyTextureSubImage2D')
	public extern static function copyTextureSubImage2D(texture:GLUInt, level:GLInt, xoffset:GLInt, yoffset:GLInt, x:GLInt, y:GLInt, width:GLSizeI, height:GLSizeI):Void;

	@:native('glCopyTextureSubImage3D')
	public extern static function copyTextureSubImage3D(texture:GLUInt, level:GLInt, xoffset:GLInt, yoffset:GLInt, zoffset:GLInt, x:GLInt, y:GLInt, width:GLSizeI, height:GLSizeI):Void;

	@:native('glTextureParameterf')
	public extern static function textureParameterf(texture:GLUInt, pname:GLEnum, param:GLFloat):Void;

	@:native('glTextureParameterfv')
	public extern static function textureParameterfv(texture:GLUInt, pname:GLEnum, param:ConstPtr<GLFloat>):Void;

	@:native('glTextureParameteri')
	public extern static function textureParameteri(texture:GLUInt, pname:GLEnum, param:GLInt):Void;

	@:native('glTextureParameterIiv')
	public extern static function textureParameterIiv(texture:GLUInt, pname:GLEnum, params:ConstPtr<GLInt>):Void;

	@:native('glTextureParameterIuiv')
	public extern static function textureParameterIuiv(texture:GLUInt, pname:GLEnum, params:ConstPtr<GLUInt>):Void;

	@:native('glTextureParameteriv')
	public extern static function textureParameteriv(texture:GLUInt, pname:GLEnum, param:ConstPtr<GLInt>):Void;

	@:native('glGenerateTextureMipmap')
	public extern static function generateTextureMipmap(texture:GLUInt):Void;

	@:native('glBindTextureUnit')
	public extern static function bindTextureUnit(unit:GLUInt, texture:GLUInt):Void;

	@:native('glGetTextureImage')
	public extern static function getTextureImage(texture:GLUInt, level:GLInt, format:GLEnum, type:GLEnum, bufSize:GLSizeI, pixels:Ptr<Void>):Void;

	@:native('glGetCompressedTextureImage')
	public extern static function getCompressedTextureImage(texture:GLUInt, level:GLInt, bufSize:GLSizeI, pixels:Ptr<Void>):Void;

	@:native('glGetTextureLevelParameterfv')
	public extern static function getTextureLevelParameterfv(texture:GLUInt, level:GLInt, pname:GLEnum, params:Ptr<GLFloat>):Void;

	@:native('glGetTextureLevelParameteriv')
	public extern static function getTextureLevelParameteriv(texture:GLUInt, level:GLInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetTextureParameterfv')
	public extern static function getTextureParameterfv(texture:GLUInt, pname:GLEnum, params:Ptr<GLFloat>):Void;

	@:native('glGetTextureParameterIiv')
	public extern static function getTextureParameterIiv(texture:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetTextureParameterIuiv')
	public extern static function getTextureParameterIuiv(texture:GLUInt, pname:GLEnum, params:Ptr<GLUInt>):Void;

	@:native('glGetTextureParameteriv')
	public extern static function getTextureParameteriv(texture:GLUInt, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glCreateVertexArrays')
	public extern static function createVertexArrays(n:GLSizeI, arrays:Ptr<GLUInt>):Void;

	@:native('glDisableVertexArrayAttrib')
	public extern static function disableVertexArrayAttrib(vaobj:GLUInt, index:GLUInt):Void;

	@:native('glEnableVertexArrayAttrib')
	public extern static function enableVertexArrayAttrib(vaobj:GLUInt, index:GLUInt):Void;

	@:native('glVertexArrayElementBuffer')
	public extern static function vertexArrayElementBuffer(vaobj:GLUInt, buffer:GLUInt):Void;

	@:native('glVertexArrayVertexBuffer')
	public extern static function vertexArrayVertexBuffer(vaobj:GLUInt, bindingindex:GLUInt, buffer:GLUInt, offset:GLIntPointer, stride:GLSizeI):Void;

	@:native('glVertexArrayVertexBuffers')
	public extern static function vertexArrayVertexBuffers(vaobj:GLUInt, first:GLUInt, count:GLSizeI, buffers:ConstPtr<GLUInt>, offsets:ConstPtr<GLIntPointer>, strides:ConstPtr<GLSizeI>):Void;

	@:native('glVertexArrayAttribBinding')
	public extern static function vertexArrayAttribBinding(vaobj:GLUInt, attribindex:GLUInt, bindingindex:GLUInt):Void;

	@:native('glVertexArrayAttribFormat')
	public extern static function vertexArrayAttribFormat(vaobj:GLUInt, attribindex:GLUInt, size:GLInt, type:GLEnum, normalized:GLBool, relativeoffset:GLUInt):Void;

	@:native('glVertexArrayAttribIFormat')
	public extern static function vertexArrayAttribIFormat(vaobj:GLUInt, attribindex:GLUInt, size:GLInt, type:GLEnum, relativeoffset:GLUInt):Void;

	@:native('glVertexArrayAttribLFormat')
	public extern static function vertexArrayAttribLFormat(vaobj:GLUInt, attribindex:GLUInt, size:GLInt, type:GLEnum, relativeoffset:GLUInt):Void;

	@:native('glVertexArrayBindingDivisor')
	public extern static function vertexArrayBindingDivisor(vaobj:GLUInt, bindingindex:GLUInt, divisor:GLUInt):Void;

	@:native('glGetVertexArrayiv')
	public extern static function getVertexArrayiv(vaobj:GLUInt, pname:GLEnum, param:Ptr<GLInt>):Void;

	@:native('glGetVertexArrayIndexediv')
	public extern static function getVertexArrayIndexediv(vaobj:GLUInt, index:GLUInt, pname:GLEnum, param:Ptr<GLInt>):Void;

	@:native('glGetVertexArrayIndexed64iv')
	public extern static function getVertexArrayIndexed64iv(vaobj:GLUInt, index:GLUInt, pname:GLEnum, param:Ptr<Int64>):Void;

	@:native('glCreateSamplers')
	public extern static function createSamplers(n:GLSizeI, samplers:Ptr<GLUInt>):Void;

	@:native('glCreateProgramPipelines')
	public extern static function createProgramPipelines(n:GLSizeI, pipelines:Ptr<GLUInt>):Void;

	@:native('glCreateQueries')
	public extern static function createQueries(target:GLEnum, n:GLSizeI, ids:Ptr<GLUInt>):Void;

	@:native('glGetQueryBufferObjecti64v')
	public extern static function getQueryBufferObjecti64v(id:GLUInt, buffer:GLUInt, pname:GLEnum, offset:GLIntPointer):Void;

	@:native('glGetQueryBufferObjectiv')
	public extern static function getQueryBufferObjectiv(id:GLUInt, buffer:GLUInt, pname:GLEnum, offset:GLIntPointer):Void;

	@:native('glGetQueryBufferObjectui64v')
	public extern static function getQueryBufferObjectui64v(id:GLUInt, buffer:GLUInt, pname:GLEnum, offset:GLIntPointer):Void;

	@:native('glGetQueryBufferObjectuiv')
	public extern static function getQueryBufferObjectuiv(id:GLUInt, buffer:GLUInt, pname:GLEnum, offset:GLIntPointer):Void;

	@:native('glMemoryBarrierByRegion')
	public extern static function memoryBarrierByRegion(barriers:GLBitField):Void;

	@:native('glGetTextureSubImage')
	public extern static function getTextureSubImage(texture:GLUInt, level:GLInt, xoffset:GLInt, yoffset:GLInt, zoffset:GLInt, width:GLSizeI, height:GLSizeI, depth:GLSizeI, format:GLEnum, type:GLEnum, bufSize:GLSizeI, pixels:Ptr<Void>):Void;

	@:native('glGetCompressedTextureSubImage')
	public extern static function getCompressedTextureSubImage(texture:GLUInt, level:GLInt, xoffset:GLInt, yoffset:GLInt, zoffset:GLInt, width:GLSizeI, height:GLSizeI, depth:GLSizeI, bufSize:GLSizeI, pixels:Ptr<Void>):Void;

	@:native('glGetGraphicsResetStatus')
	public extern static function getGraphicsResetStatus():GLEnum;

	@:native('glGetnCompressedTexImage')
	public extern static function getnCompressedTexImage(target:GLEnum, lod:GLInt, bufSize:GLSizeI, pixels:Ptr<Void>):Void;

	@:native('glGetnTexImage')
	public extern static function getnTexImage(target:GLEnum, level:GLInt, format:GLEnum, type:GLEnum, bufSize:GLSizeI, pixels:Ptr<Void>):Void;

	@:native('glGetnUniformdv')
	public extern static function getnUniformdv(program:GLUInt, location:GLInt, bufSize:GLSizeI, params:Ptr<GLDouble>):Void;

	@:native('glGetnUniformfv')
	public extern static function getnUniformfv(program:GLUInt, location:GLInt, bufSize:GLSizeI, params:Ptr<GLFloat>):Void;

	@:native('glGetnUniformiv')
	public extern static function getnUniformiv(program:GLUInt, location:GLInt, bufSize:GLSizeI, params:Ptr<GLInt>):Void;

	@:native('glGetnUniformuiv')
	public extern static function getnUniformuiv(program:GLUInt, location:GLInt, bufSize:GLSizeI, params:Ptr<GLUInt>):Void;

	@:native('glReadnPixels')
	public extern static function readnPixels(x:GLInt, y:GLInt, width:GLSizeI, height:GLSizeI, format:GLEnum, type:GLEnum, bufSize:GLSizeI, data:Ptr<Void>):Void;

	@:native('glGetnMapdv')
	public extern static function getnMapdv(target:GLEnum, query:GLEnum, bufSize:GLSizeI, v:Ptr<GLDouble>):Void;

	@:native('glGetnMapfv')
	public extern static function getnMapfv(target:GLEnum, query:GLEnum, bufSize:GLSizeI, v:Ptr<GLFloat>):Void;

	@:native('glGetnMapiv')
	public extern static function getnMapiv(target:GLEnum, query:GLEnum, bufSize:GLSizeI, v:Ptr<GLInt>):Void;

	@:native('glGetnPixelMapfv')
	public extern static function getnPixelMapfv(map:GLEnum, bufSize:GLSizeI, values:Ptr<GLFloat>):Void;

	@:native('glGetnPixelMapuiv')
	public extern static function getnPixelMapuiv(map:GLEnum, bufSize:GLSizeI, values:Ptr<GLUInt>):Void;

	@:native('glGetnPixelMapusv')
	public extern static function getnPixelMapusv(map:GLEnum, bufSize:GLSizeI, values:Ptr<GLUShort>):Void;

	@:native('glGetnPolygonStipple')
	public extern static function getnPolygonStipple(bufSize:GLSizeI, pattern:Ptr<GLUByte>):Void;

	@:native('glGetnColorTable')
	public extern static function getnColorTable(target:GLEnum, format:GLEnum, type:GLEnum, bufSize:GLSizeI, table:Ptr<Void>):Void;

	@:native('glGetnConvolutionFilter')
	public extern static function getnConvolutionFilter(target:GLEnum, format:GLEnum, type:GLEnum, bufSize:GLSizeI, image:Ptr<Void>):Void;

	@:native('glGetnSeparableFilter')
	public extern static function getnSeparableFilter(target:GLEnum, format:GLEnum, type:GLEnum, rowBufSize:GLSizeI, row:Ptr<Void>, columnBufSize:GLSizeI, column:Ptr<Void>, span:Ptr<Void>):Void;

	@:native('glGetnHistogram')
	public extern static function getnHistogram(target:GLEnum, reset:GLBool, format:GLEnum, type:GLEnum, bufSize:GLSizeI, values:Ptr<Void>):Void;

	@:native('glGetnMinmax')
	public extern static function getnMinmax(target:GLEnum, reset:GLBool, format:GLEnum, type:GLEnum, bufSize:GLSizeI, values:Ptr<Void>):Void;

	@:native('glTextureBarrier')
	public extern static function textureBarrier():Void;

	@:native('glSpecializeShader')
	public extern static function specializeShader(shader:GLUInt, pEntryPoint:ConstCharPtr, numSpecializationConstants:GLUInt, pConstantIndex:ConstPtr<GLUInt>, pConstantValue:ConstPtr<GLUInt>):Void;

	@:native('glMultiDrawArraysIndirectCount')
	public extern static function multiDrawArraysIndirectCount(mode:GLEnum, indirect:ConstPtr<Void>, drawcount:GLIntPointer, maxdrawcount:GLSizeI, stride:GLSizeI):Void;

	@:native('glMultiDrawElementsIndirectCount')
	public extern static function multiDrawElementsIndirectCount(mode:GLEnum, type:GLEnum, indirect:ConstPtr<Void>, drawcount:GLIntPointer, maxdrawcount:GLSizeI, stride:GLSizeI):Void;

	@:native('glPolygonOffsetClamp')
	public extern static function polygonOffsetClamp(factor:GLFloat, units:GLFloat, clamp:GLFloat):Void;

	@:native('glAlphaFunc')
	public extern static function alphaFunc(func:GLEnum, ref:GLFloat):Void;

	@:native('glClipPlanef')
	public extern static function clipPlanef(p:GLEnum, eqn:ConstPtr<GLFloat>):Void;

	@:native('glColor4f')
	public extern static function color4f(red:GLFloat, green:GLFloat, blue:GLFloat, alpha:GLFloat):Void;

	@:native('glFogf')
	public extern static function fogf(pname:GLEnum, param:GLFloat):Void;

	@:native('glFogfv')
	public extern static function fogfv(pname:GLEnum, params:ConstPtr<GLFloat>):Void;

	@:native('glFrustumf')
	public extern static function frustumf(l:GLFloat, r:GLFloat, b:GLFloat, t:GLFloat, n:GLFloat, f:GLFloat):Void;

	@:native('glGetClipPlanef')
	public extern static function getClipPlanef(plane:GLEnum, equation:Ptr<GLFloat>):Void;

	@:native('glGetLightfv')
	public extern static function getLightfv(light:GLEnum, pname:GLEnum, params:Ptr<GLFloat>):Void;

	@:native('glGetMaterialfv')
	public extern static function getMaterialfv(face:GLEnum, pname:GLEnum, params:Ptr<GLFloat>):Void;

	@:native('glGetTexEnvfv')
	public extern static function getTexEnvfv(target:GLEnum, pname:GLEnum, params:Ptr<GLFloat>):Void;

	@:native('glLightModelf')
	public extern static function lightModelf(pname:GLEnum, param:GLFloat):Void;

	@:native('glLightModelfv')
	public extern static function lightModelfv(pname:GLEnum, params:ConstPtr<GLFloat>):Void;

	@:native('glLightf')
	public extern static function lightf(light:GLEnum, pname:GLEnum, param:GLFloat):Void;

	@:native('glLightfv')
	public extern static function lightfv(light:GLEnum, pname:GLEnum, params:ConstPtr<GLFloat>):Void;

	@:native('glLoadMatrixf')
	public extern static function loadMatrixf(m:ConstPtr<GLFloat>):Void;

	@:native('glMaterialf')
	public extern static function materialf(face:GLEnum, pname:GLEnum, param:GLFloat):Void;

	@:native('glMaterialfv')
	public extern static function materialfv(face:GLEnum, pname:GLEnum, params:ConstPtr<GLFloat>):Void;

	@:native('glMultMatrixf')
	public extern static function multMatrixf(m:ConstPtr<GLFloat>):Void;

	@:native('glMultiTexCoord4f')
	public extern static function multiTexCoord4f(target:GLEnum, s:GLFloat, t:GLFloat, r:GLFloat, q:GLFloat):Void;

	@:native('glNormal3f')
	public extern static function normal3f(nx:GLFloat, ny:GLFloat, nz:GLFloat):Void;

	@:native('glOrthof')
	public extern static function orthof(l:GLFloat, r:GLFloat, b:GLFloat, t:GLFloat, n:GLFloat, f:GLFloat):Void;

	@:native('glRotatef')
	public extern static function rotatef(angle:GLFloat, x:GLFloat, y:GLFloat, z:GLFloat):Void;

	@:native('glScalef')
	public extern static function scalef(x:GLFloat, y:GLFloat, z:GLFloat):Void;

	@:native('glTexEnvf')
	public extern static function texEnvf(target:GLEnum, pname:GLEnum, param:GLFloat):Void;

	@:native('glTexEnvfv')
	public extern static function texEnvfv(target:GLEnum, pname:GLEnum, params:ConstPtr<GLFloat>):Void;

	@:native('glTranslatef')
	public extern static function translatef(x:GLFloat, y:GLFloat, z:GLFloat):Void;

	@:native('glAlphaFuncx')
	public extern static function alphaFuncx(func:GLEnum, ref:GLFixed):Void;

	@:native('glClearColorx')
	public extern static function clearColorx(red:GLFixed, green:GLFixed, blue:GLFixed, alpha:GLFixed):Void;

	@:native('glClearDepthx')
	public extern static function clearDepthx(depth:GLFixed):Void;

	@:native('glClientActiveTexture')
	public extern static function clientActiveTexture(texture:GLEnum):Void;

	@:native('glClipPlanex')
	public extern static function clipPlanex(plane:GLEnum, equation:ConstPtr<GLFixed>):Void;

	@:native('glColor4ub')
	public extern static function color4ub(red:GLUByte, green:GLUByte, blue:GLUByte, alpha:GLUByte):Void;

	@:native('glColor4x')
	public extern static function color4x(red:GLFixed, green:GLFixed, blue:GLFixed, alpha:GLFixed):Void;

	@:native('glColorPointer')
	public extern static function colorPointer(size:GLInt, type:GLEnum, stride:GLSizeI, Ptr:ConstPtr<Void>):Void;

	@:native('glDepthRangex')
	public extern static function depthRangex(n:GLFixed, f:GLFixed):Void;

	@:native('glDisableClientState')
	public extern static function disableClientState(array:GLEnum):Void;

	@:native('glEnableClientState')
	public extern static function enableClientState(array:GLEnum):Void;

	@:native('glFogx')
	public extern static function fogx(pname:GLEnum, param:GLFixed):Void;

	@:native('glFogxv')
	public extern static function fogxv(pname:GLEnum, param:ConstPtr<GLFixed>):Void;

	@:native('glFrustumx')
	public extern static function frustumx(l:GLFixed, r:GLFixed, b:GLFixed, t:GLFixed, n:GLFixed, f:GLFixed):Void;

	@:native('glGetClipPlanex')
	public extern static function getClipPlanex(plane:GLEnum, equation:Ptr<GLFixed>):Void;

	@:native('glGetFixedv')
	public extern static function getFixedv(pname:GLEnum, params:Ptr<GLFixed>):Void;

	@:native('glGetLightxv')
	public extern static function getLightxv(light:GLEnum, pname:GLEnum, params:Ptr<GLFixed>):Void;

	@:native('glGetMaterialxv')
	public extern static function getMaterialxv(face:GLEnum, pname:GLEnum, params:Ptr<GLFixed>):Void;

	@:native('glGetTexEnviv')
	public extern static function getTexEnviv(target:GLEnum, pname:GLEnum, params:Ptr<GLInt>):Void;

	@:native('glGetTexEnvxv')
	public extern static function getTexEnvxv(target:GLEnum, pname:GLEnum, params:Ptr<GLFixed>):Void;

	@:native('glGetTexParameterxv')
	public extern static function getTexParameterxv(target:GLEnum, pname:GLEnum, params:Ptr<GLFixed>):Void;

	@:native('glLightModelx')
	public extern static function lightModelx(pname:GLEnum, param:GLFixed):Void;

	@:native('glLightModelxv')
	public extern static function lightModelxv(pname:GLEnum, param:ConstPtr<GLFixed>):Void;

	@:native('glLightx')
	public extern static function lightx(light:GLEnum, pname:GLEnum, param:GLFixed):Void;

	@:native('glLightxv')
	public extern static function lightxv(light:GLEnum, pname:GLEnum, params:ConstPtr<GLFixed>):Void;

	@:native('glLineWidthx')
	public extern static function lineWidthx(width:GLFixed):Void;

	@:native('glLoadIdentity')
	public extern static function loadIdentity():Void;

	@:native('glLoadMatrixx')
	public extern static function loadMatrixx(m:ConstPtr<GLFixed>):Void;

	@:native('glMaterialx')
	public extern static function materialx(face:GLEnum, pname:GLEnum, param:GLFixed):Void;

	@:native('glMaterialxv')
	public extern static function materialxv(face:GLEnum, pname:GLEnum, param:ConstPtr<GLFixed>):Void;

	@:native('glMatrixMode')
	public extern static function matrixMode(mode:GLEnum):Void;

	@:native('glMultMatrixx')
	public extern static function multMatrixx(m:ConstPtr<GLFixed>):Void;

	@:native('glMultiTexCoord4x')
	public extern static function multiTexCoord4x(texture:GLEnum, s:GLFixed, t:GLFixed, r:GLFixed, q:GLFixed):Void;

	@:native('glNormal3x')
	public extern static function normal3x(nx:GLFixed, ny:GLFixed, nz:GLFixed):Void;

	@:native('glNormalPointer')
	public extern static function normalPointer(type:GLEnum, stride:GLSizeI, Ptr:ConstPtr<Void>):Void;

	@:native('glOrthox')
	public extern static function orthox(l:GLFixed, r:GLFixed, b:GLFixed, t:GLFixed, n:GLFixed, f:GLFixed):Void;

	@:native('glPointParameterx')
	public extern static function pointParameterx(pname:GLEnum, param:GLFixed):Void;

	@:native('glPointParameterxv')
	public extern static function pointParameterxv(pname:GLEnum, params:ConstPtr<GLFixed>):Void;

	@:native('glPointSizex')
	public extern static function pointSizex(size:GLFixed):Void;

	@:native('glPolygonOffsetx')
	public extern static function polygonOffsetx(factor:GLFixed, units:GLFixed):Void;

	@:native('glPopMatrix')
	public extern static function popMatrix():Void;

	@:native('glPushMatrix')
	public extern static function pushMatrix():Void;

	@:native('glRotatex')
	public extern static function rotatex(angle:GLFixed, x:GLFixed, y:GLFixed, z:GLFixed):Void;

	@:native('glSampleCoveragex')
	public extern static function sampleCoveragex(value:GLClampX, invert:GLBool):Void;

	@:native('glScalex')
	public extern static function scalex(x:GLFixed, y:GLFixed, z:GLFixed):Void;

	@:native('glShadeModel')
	public extern static function shadeModel(mode:GLEnum):Void;

	@:native('glTexCoordPointer')
	public extern static function texCoordPointer(size:GLInt, type:GLEnum, stride:GLSizeI, Ptr:ConstPtr<Void>):Void;

	@:native('glTexEnvi')
	public extern static function texEnvi(target:GLEnum, pname:GLEnum, param:GLInt):Void;

	@:native('glTexEnvx')
	public extern static function texEnvx(target:GLEnum, pname:GLEnum, param:GLFixed):Void;

	@:native('glTexEnviv')
	public extern static function texEnviv(target:GLEnum, pname:GLEnum, params:ConstPtr<GLInt>):Void;

	@:native('glTexEnvxv')
	public extern static function texEnvxv(target:GLEnum, pname:GLEnum, params:ConstPtr<GLFixed>):Void;

	@:native('glTexParameterx')
	public extern static function texParameterx(target:GLEnum, pname:GLEnum, param:GLFixed):Void;

	@:native('glTexParameterxv')
	public extern static function texParameterxv(target:GLEnum, pname:GLEnum, params:ConstPtr<GLFixed>):Void;

	@:native('glTranslatex')
	public extern static function translatex(x:GLFixed, y:GLFixed, z:GLFixed):Void;

	@:native('glVertexPointer')
	public extern static function vertexPointer(size:GLInt, type:GLEnum, stride:GLSizeI, Ptr:ConstPtr<Void>):Void;

	@:native('glBlendBarrier')
	public extern static function blendBarrier():Void;

	@:native('glPrimitiveBoundingBox')
	public extern static function primitiveBoundingBox(minX:GLFloat, minY:GLFloat, minZ:GLFloat, minW:GLFloat, maxX:GLFloat, maxY:GLFloat, maxZ:GLFloat, maxW:GLFloat):Void;
}