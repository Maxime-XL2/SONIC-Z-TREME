#ifndef MODELEXPLOSION_H
#define MODELEXPLOSION_H

static POINT    PointExplosion[] =
{
	{0, 0, -4199},
	{0, -6553, -8238},
	{-2969, 0, -2969},
	{-5825, -6553, -5825},
	{-4199, 0, 0},
	{-8238, -6553, 0},
	{-2969, 0, 2969},
	{-5825, -6553, 5825},
	{0, 0, 4199},
	{0, -6553, 8238},
	{2969, 0, 2969},
	{5825, -6553, 5825},
	{4199, 0, 0},
	{8238, -6553, 0},
	{2969, 0, -2969},
	{5825, -6553, -5825},
};

static POLYGON    PolygonExplosion[] =
{
	{{-21797, 32427, -52618}, {0, 1, 3, 2}},
	{{-52618, 32427, -21797}, {2, 3, 5, 4}},
	{{-52618, 32427, 21797}, {4, 5, 7, 6}},
	{{-21797, 32427, 52618}, {6, 7, 9, 8}},
	{{21797, 32427, 52618}, {8, 9, 11, 10}},
	{{52618, 32427, 21797}, {10, 11, 13, 12}},
	{{52618, 32427, -21797}, {12, 13, 15, 14}},
	{{21797, 32427, -52618}, {14, 15, 1, 0}},
};

static ATTR    AttributeExplosion[] =
{
	ATTRIBUTE(Dual_Plane, SORT_CEN, No_Texture, C_RGB(31,1,1), No_Gouraud, Window_In|MESHon, sprPolygon, UseLight),
	ATTRIBUTE(Dual_Plane, SORT_CEN, No_Texture, C_RGB(31,2,2), No_Gouraud, Window_In|MESHon, sprPolygon, UseLight),
	ATTRIBUTE(Dual_Plane, SORT_CEN, No_Texture, C_RGB(31,3,3), No_Gouraud, Window_In|MESHon, sprPolygon, UseLight),
	ATTRIBUTE(Dual_Plane, SORT_CEN, No_Texture, C_RGB(31,4,4), No_Gouraud, Window_In|MESHon, sprPolygon, UseLight),
	ATTRIBUTE(Dual_Plane, SORT_CEN, No_Texture, C_RGB(31,5,5), No_Gouraud, Window_In|MESHon, sprPolygon, UseLight),
	ATTRIBUTE(Dual_Plane, SORT_CEN, No_Texture, C_RGB(31,4,4), No_Gouraud, Window_In|MESHon, sprPolygon, UseLight),
	ATTRIBUTE(Dual_Plane, SORT_CEN, No_Texture, C_RGB(31,3,3), No_Gouraud, Window_In|MESHon, sprPolygon, UseLight),
	ATTRIBUTE(Dual_Plane, SORT_CEN, No_Texture, C_RGB(31,2,2), No_Gouraud, Window_In|MESHon, sprPolygon, UseLight),
};

#ifndef MeshExplosion
PDATA   MeshExplosion =
{
		PointExplosion,
		16,
		PolygonExplosion,
		8,
		AttributeExplosion
};
#endif

#endif /* !__3D_MODELEXPLOSION_H__ */
