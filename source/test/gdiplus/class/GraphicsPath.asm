; GRAPHICSPATH.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include windows.inc
include gdiplus.inc

    .code

main proc

  .new p:ptr GraphicsPath()

    GraphicsPath()
    p.GraphicsPath()
    p.Release()
    p.FromPath(NULL)
    p.SetNativePath(NULL)
    p.SetStatus(0)
    p.CreatePath(0)
    p.CreatePath2(NULL, NULL, 0, 0)
    p.CreatePath2I(NULL, NULL, 0, 0)
    p.Clone()
    p.Reset()
    p.GetFillMode()
    p.SetFillMode(0)
    p.GetPathData(NULL)
    p.StartFigure()
    p.CloseFigure()
    p.CloseAllFigures()
    p.SetMarker()
    p.ClearMarkers()
    p.Reverse()
    p.GetLastPoint(NULL)
    p.AddPathLine(0.0, 0.0, 0.0, 0.0)
    p.AddLine(NULL, NULL)
    p.AddLines(NULL, 0)
    p.AddPathLineI(0, 0, 0, 0)
    p.AddLineI(NULL, NULL)
    p.AddLinesI(NULL, 0)
    p.AddPathArc(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    p.AddArc(NULL, 0.0, 0.0)
    p.AddPathArcI(0, 0, 0, 0, 0.0, 0.0)
    p.AddArcI(NULL, 0.0, 0.0)
    p.AddPathBezier(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    p.AddBezier(NULL, NULL, NULL, NULL)
    p.AddBeziers(NULL, 0)
    p.AddPathBezierI(0, 0, 0, 0, 0, 0, 0, 0)
    p.AddBezierI(NULL, NULL, NULL, NULL)
    p.AddBeziersI(NULL, 0)
    p.AddCurve(NULL, 0)
    p.AddCurve2(NULL, 0, 0.0)
    p.AddCurve3(NULL, 0, 0, 0, 0.0)
    p.AddCurveI(NULL, 0)
    p.AddCurve2I(NULL, 0, 0.0)
    p.AddCurve3I(NULL, 0, 0, 0, 0.0)
    p.AddClosedCurve(NULL, 0)
    p.AddClosedCurve2(NULL, 0, 0.0)
    p.AddClosedCurveI(NULL, 0)
    p.AddClosedCurve2I(NULL, 0, 0.0)
    p.AddRectangle(NULL)
    p.AddRectangles(NULL, 0)
    p.AddRectangleI(NULL)
    p.AddRectanglesI(NULL, 0)
    p.AddPathEllipse(0.0, 0.0, 0.0, 0.0)
    p.AddEllipse(NULL)
    p.AddPathEllipseI(0, 0, 0, 0)
    p.AddEllipseI(NULL)
    p.AddPie(NULL, 0.0, 0.0)
    p.AddPathPie(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    p.AddPieI(NULL, 0.0, 0.0)
    p.AddPathPieI(0, 0, 0, 0, 0.0, 0.0)
    p.AddPolygon(NULL, 0)
    p.AddPolygonI(NULL, 0)
    p.AddPath(NULL, 0)
    p.AddString  (NULL, 0, NULL, 0, 0.0, NULL, NULL)
    p.AddString2 (NULL, 0, NULL, 0, 0.0, NULL, NULL)
    p.AddStringI (NULL, 0, NULL, 0, 0.0, NULL, NULL)
    p.AddString2I(NULL, 0, NULL, 0, 0.0, NULL, NULL)
    p.Transform(NULL)
    p.GetBounds2(NULL, NULL, NULL)
    p.GetBounds1(NULL, NULL, NULL)
    p.Flatten(NULL, 0.0)
    p.Widen(NULL, NULL, 0.0)
    p.Outline(NULL, 0.0)
    p.Warp(NULL, 0, NULL, NULL, 0, 0.0)
    p.GetPointCount()
    p.GetPathTypes(NULL, 0)
    p.GetPathPoints(NULL, 0)
    p.GetPathPointsI(NULL, 0)
    p.GetLastStatus()
    p.IsVisible1(0, 0, NULL)
    p.IsVisible2(0.0, 0.0, NULL)
    p.IsVisible3(NULL, NULL)
    p.IsVisible4(NULL, NULL)
    p.IsOutlineVisible1(0, 0, NULL, NULL)
    p.IsOutlineVisible2(0.0, 0.0, NULL, NULL)
    p.IsOutlineVisible3(NULL, NULL, NULL)
    p.IsOutlineVisible4(NULL, NULL, NULL)
    ret

main endp

    end
