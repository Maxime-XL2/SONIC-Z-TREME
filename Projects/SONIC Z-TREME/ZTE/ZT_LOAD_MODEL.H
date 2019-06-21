#ifndef ZT_LOAD_MODEL_H
#define ZT_LOAD_MODEL_H



/**Gouraud shading*/
#define	GRtbl(n)	    (0x1c38+(n))
#define	GRaddr	        0x1c38
#define GOUR_REAL_MAX   750


typedef struct
{
    unsigned short  TOTAL_MESH; //total amount of PDATA
    short           TOT_TEXT;  //total amount of textures
    unsigned int    TEXT_SIZE;  //to quickly load from disk, that's the size of the textures in bytes
    unsigned int    PDATA_SIZE; //to quickly load from disk, total size of pdata in bytes
    FIXED           Origin[XYZ]; //Origin point used to "center" the culling/collision data and your model's position. Should be 0,0,0 unless you have an offset
    FIXED           Length[XYZ];  //Lenght along the x,y z axis. Together with the origin, that gives you the bounding box for quick broad collision testing
    unsigned short nbFrames;
    unsigned short framerate; //Interpolation factor of 2, means the number of frames between 2 key frames
    anim_struct *  animation;
} modelData_t;



/**Store all your PDATA meshes here**/
extern entity_t entities[MAX_MODELS];
extern unsigned int gouraudCounter;

/** This function loads a 3d polygonal model. Returns the last address in LWRAM (to allow loading multiple meshes)**/
void *      ztLoad3Dmodel(Sint8 * filename, void * startAddress, entity_t * model,  int UseRealtimeGouraud);

#endif // ZT_LOAD_MODEL_H
