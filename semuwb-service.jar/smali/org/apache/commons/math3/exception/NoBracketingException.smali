.class public Lorg/apache/commons/math3/exception/NoBracketingException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "NoBracketingException.java"


# static fields
.field private static final serialVersionUID:J = -0x325df360bb1970cbL


# instance fields
.field private final fHi:D

.field private final fLo:D

.field private final hi:D

.field private final lo:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 11
    .param p1, "lo"    # D
    .param p3, "hi"    # D
    .param p5, "fLo"    # D
    .param p7, "fHi"    # D

    .line 50
    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SAME_SIGN_AT_ENDPOINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v10, v0, [Ljava/lang/Object;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;DDDD[Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;DDDD[Ljava/lang/Object;)V
    .locals 4
    .param p1, "specific"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "lo"    # D
    .param p4, "hi"    # D
    .param p6, "fLo"    # D
    .param p8, "fHi"    # D
    .param p10, "args"    # [Ljava/lang/Object;

    .line 67
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p8, p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3, p10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 68
    iput-wide p2, p0, Lorg/apache/commons/math3/exception/NoBracketingException;->lo:D

    .line 69
    iput-wide p4, p0, Lorg/apache/commons/math3/exception/NoBracketingException;->hi:D

    .line 70
    iput-wide p6, p0, Lorg/apache/commons/math3/exception/NoBracketingException;->fLo:D

    .line 71
    iput-wide p8, p0, Lorg/apache/commons/math3/exception/NoBracketingException;->fHi:D

    .line 72
    return-void
.end method


# virtual methods
.method public getFHi()D
    .locals 2

    .line 104
    iget-wide v0, p0, Lorg/apache/commons/math3/exception/NoBracketingException;->fHi:D

    return-wide v0
.end method

.method public getFLo()D
    .locals 2

    .line 96
    iget-wide v0, p0, Lorg/apache/commons/math3/exception/NoBracketingException;->fLo:D

    return-wide v0
.end method

.method public getHi()D
    .locals 2

    .line 88
    iget-wide v0, p0, Lorg/apache/commons/math3/exception/NoBracketingException;->hi:D

    return-wide v0
.end method

.method public getLo()D
    .locals 2

    .line 80
    iget-wide v0, p0, Lorg/apache/commons/math3/exception/NoBracketingException;->lo:D

    return-wide v0
.end method
