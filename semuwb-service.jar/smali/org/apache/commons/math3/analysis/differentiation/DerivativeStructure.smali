.class public Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
.super Ljava/lang/Object;
.source "DerivativeStructure.java"

# interfaces
.implements Lorg/apache/commons/math3/RealFieldElement;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133049aL


# instance fields
.field private transient compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

.field private final data:[D


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V
    .locals 16
    .param p1, "a1"    # D
    .param p3, "ds1"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p4, "a2"    # D
    .param p6, "ds2"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    iget-object v3, v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 143
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v4, v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 144
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v8, v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v12, v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v14, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-wide/from16 v6, p1

    move-wide/from16 v10, p4

    invoke-virtual/range {v5 .. v15}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->linearCombination(D[DID[DI[DI)V

    .line 145
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V
    .locals 21
    .param p1, "a1"    # D
    .param p3, "ds1"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p4, "a2"    # D
    .param p6, "ds2"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p7, "a3"    # D
    .param p9, "ds3"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    iget-object v4, v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 162
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v5, v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 163
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v5, v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 164
    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v9, v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v13, v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v4, v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/16 v20, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-wide/from16 v7, p1

    move-wide/from16 v11, p4

    move-wide/from16 v15, p7

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    invoke-virtual/range {v6 .. v20}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->linearCombination(D[DID[DID[DI[DI)V

    .line 165
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V
    .locals 26
    .param p1, "a1"    # D
    .param p3, "ds1"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p4, "a2"    # D
    .param p6, "ds2"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p7, "a3"    # D
    .param p9, "ds3"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p10, "a4"    # D
    .param p12, "ds4"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p12

    iget-object v5, v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 185
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v6, v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 186
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v6, v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 187
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v6, v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 188
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v10, v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v14, v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v5, v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v6, v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v8, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/16 v25, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    move-wide/from16 v12, p4

    move-wide/from16 v16, p7

    move-wide/from16 v20, p10

    move-object/from16 v18, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v8

    move-wide/from16 v8, p1

    invoke-virtual/range {v7 .. v25}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->linearCombination(D[DID[DID[DID[DI[DI)V

    .line 191
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "parameters"    # I
    .param p2, "order"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 87
    invoke-static {p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getCompiler(II)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 88
    return-void
.end method

.method public constructor <init>(IID)V
    .locals 2
    .param p1, "parameters"    # I
    .param p2, "order"    # I
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II)V

    .line 100
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aput-wide p3, v0, v1

    .line 101
    return-void
.end method

.method public constructor <init>(IIID)V
    .locals 4
    .param p1, "parameters"    # I
    .param p2, "order"    # I
    .param p3, "index"    # I
    .param p4, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1, p2, p4, p5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    .line 120
    if-ge p3, p1, :cond_1

    .line 124
    if-lez p2, :cond_0

    .line 126
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-static {p3, p2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getCompiler(II)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    .line 129
    :cond_0
    return-void

    .line 121
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public varargs constructor <init>(II[D)V
    .locals 3
    .param p1, "parameters"    # I
    .param p2, "order"    # I
    .param p3, "derivatives"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II)V

    .line 206
    array-length v0, p3

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    return-void

    .line 207
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p3

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method private constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V
    .locals 1
    .param p1, "compiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .line 77
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    .line 78
    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V
    .locals 1
    .param p1, "ds"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iget-object v0, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .line 217
    iget-object v0, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    .line 218
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 61
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    return-object v0
.end method

.method public static atan2(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 1
    .param p0, "y"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p1, "x"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 810
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->atan2(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public static hypot(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 1
    .param p0, "x"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p1, "y"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 574
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->hypot(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public static pow(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .param p0, "a"    # D
    .param p2, "x"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 654
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 655
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v4, p2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-wide v2, p0

    .end local p0    # "a":D
    .local v2, "a":D
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->pow(D[DI[DI)V

    .line 656
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 4

    .line 1151
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;-><init>(II[D)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic abs()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->abs()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public abs()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 410
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0

    .line 414
    :cond_0
    return-object p0
.end method

.method public bridge synthetic acos()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->acos()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public acos()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 766
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 767
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->acos([DI[DI)V

    .line 768
    return-object v0
.end method

.method public bridge synthetic acosh()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->acosh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public acosh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 844
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 845
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->acosh([DI[DI)V

    .line 846
    return-object v0
.end method

.method public bridge synthetic add(D)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 61
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5
    .param p1, "a"    # D

    .line 290
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V

    .line 291
    .local v0, "ds":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    add-double/2addr v3, p1

    aput-wide v3, v1, v2

    .line 292
    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 302
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V

    .line 303
    .local v0, "ds":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->add([DI[DI[DI)V

    .line 304
    return-object v0
.end method

.method public bridge synthetic asin()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->asin()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public asin()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 775
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 776
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->asin([DI[DI)V

    .line 777
    return-object v0
.end method

.method public bridge synthetic asinh()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->asinh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public asinh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 853
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 854
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->asinh([DI[DI)V

    .line 855
    return-object v0
.end method

.method public bridge synthetic atan()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->atan()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public atan()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 784
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 785
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->atan([DI[DI)V

    .line 786
    return-object v0
.end method

.method public bridge synthetic atan2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 61
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->atan2(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public atan2(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .param p1, "x"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 795
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 796
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->atan2([DI[DI[DI)V

    .line 797
    return-object v0
.end method

.method public bridge synthetic atanh()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->atanh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public atanh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 862
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 863
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->atanh([DI[DI)V

    .line 864
    return-object v0
.end method

.method public bridge synthetic cbrt()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->cbrt()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public cbrt()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 1

    .line 613
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->rootN(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ceil()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->ceil()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public ceil()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 422
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method

.method public varargs compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7
    .param p1, "f"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 587
    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    .line 590
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 591
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    .end local p1    # "f":[D
    .local v4, "f":[D
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 592
    return-object v0

    .line 588
    .end local v0    # "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .end local v4    # "f":[D
    .restart local p1    # "f":[D
    :cond_0
    move-object v4, p1

    .end local p1    # "f":[D
    .restart local v4    # "f":[D
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method

.method public bridge synthetic copySign(D)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->copySign(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copySign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->copySign(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public copySign(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7
    .param p1, "sign"    # D

    .line 475
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 476
    .local v0, "m":J
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 477
    .local v2, "s":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    :cond_0
    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 478
    :cond_1
    return-object p0

    .line 480
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v4

    return-object v4
.end method

.method public copySign(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7
    .param p1, "sign"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 463
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 464
    .local v2, "m":J
    iget-object v0, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 465
    .local v0, "s":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    :cond_0
    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 466
    :cond_1
    return-object p0

    .line 468
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic cos()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->cos()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public cos()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 739
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 740
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->cos([DI[DI)V

    .line 741
    return-object v0
.end method

.method public bridge synthetic cosh()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->cosh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public cosh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 817
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 818
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->cosh([DI[DI)V

    .line 819
    return-object v0
.end method

.method public createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 3
    .param p1, "c"    # D

    .line 245
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v2

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method

.method public bridge synthetic divide(D)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->divide(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 61
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->divide(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public divide(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5
    .param p1, "a"    # D

    .line 358
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V

    .line 359
    .local v0, "ds":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 360
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v3, v2, v1

    div-double/2addr v3, p1

    aput-wide v3, v2, v1

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public divide(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 372
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 373
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->divide([DI[DI[DI)V

    .line 374
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 1121
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1122
    return v0

    .line 1125
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1126
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 1127
    .local v1, "rhs":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v4, v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->equals([D[D)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 1132
    .end local v1    # "rhs":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    :cond_2
    return v2
.end method

.method public bridge synthetic exp()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->exp()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public exp()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 694
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 695
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->exp([DI[DI)V

    .line 696
    return-object v0
.end method

.method public bridge synthetic expm1()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->expm1()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public expm1()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 703
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 704
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->expm1([DI[DI)V

    .line 705
    return-object v0
.end method

.method public bridge synthetic floor()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->floor()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public floor()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 431
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method

.method public getAllDerivatives()[D
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getExponent()I
    .locals 2

    .line 492
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result v0

    return v0
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field<",
            "Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;",
            ">;"
        }
    .end annotation

    .line 627
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$1;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V

    return-object v0
.end method

.method public getFreeParameters()I
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result v0

    return v0
.end method

.method public varargs getPartialDerivative([I)D
    .locals 2
    .param p1, "orders"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex([I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getReal()D
    .locals 2

    .line 252
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getValue()D
    .locals 2

    .line 260
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 1143
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v0

    mul-int/lit16 v0, v0, 0xe5

    add-int/lit16 v0, v0, 0xe3

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    mul-int/lit16 v1, v1, 0xe9

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v1

    mul-int/lit16 v1, v1, 0xef

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic hypot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 61
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->hypot(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public hypot(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7
    .param p1, "y"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 516
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 520
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getExponent()I

    move-result v0

    .line 527
    .local v0, "expX":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getExponent()I

    move-result v1

    .line 528
    .local v1, "expY":I
    add-int/lit8 v2, v1, 0x1b

    if-le v0, v2, :cond_2

    .line 530
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->abs()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    return-object v2

    .line 531
    :cond_2
    add-int/lit8 v2, v0, 0x1b

    if-le v1, v2, :cond_3

    .line 533
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->abs()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    return-object v2

    .line 537
    :cond_3
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 540
    .local v2, "middleExp":I
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    .line 541
    .local v3, "scaledX":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    neg-int v4, v2

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v4

    .line 544
    .local v4, "scaledY":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {v3, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    invoke-virtual {v4, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->sqrt()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    .line 548
    .local v5, "scaledH":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v6

    return-object v6

    .line 521
    .end local v0    # "expX":I
    .end local v1    # "expY":I
    .end local v2    # "middleExp":I
    .end local v3    # "scaledX":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .end local v4    # "scaledY":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .end local v5    # "scaledH":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    :cond_4
    :goto_0
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v2

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0

    .line 517
    :cond_5
    :goto_1
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v2

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 61
    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 61
    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object/from16 v6, p6

    check-cast v6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object/from16 v9, p9

    check-cast v9, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p4

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 61
    move-object/from16 v3, p3

    check-cast v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object/from16 v6, p6

    check-cast v6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object/from16 v9, p9

    check-cast v9, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object/from16 v12, p12

    check-cast v12, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v4, p4

    move-wide/from16 v7, p7

    move-wide/from16 v10, p10

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 61
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v4, p4

    check-cast v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v5, p5

    check-cast v5, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 61
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v4, p4

    check-cast v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v5, p5

    check-cast v5, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object/from16 v7, p7

    check-cast v7, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object/from16 v8, p8

    check-cast v8, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination([D[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 61
    check-cast p2, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination([D[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 61
    check-cast p1, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p2, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 991
    invoke-virtual {p3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    invoke-virtual {p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v6

    move-wide v0, p1

    move-wide v4, p4

    .end local p1    # "a1":D
    .end local p4    # "a2":D
    .local v0, "a1":D
    .local v4, "a2":D
    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p1

    .line 995
    .local p1, "accurateValue":D
    invoke-virtual {p3, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p4

    invoke-virtual {p6, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p5

    invoke-virtual {p4, p5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p4

    .line 998
    .local p4, "simpleValue":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object p5

    .line 999
    .local p5, "all":[D
    const/4 v2, 0x0

    aput-wide p1, p5, v2

    .line 1000
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v6

    invoke-direct {v2, v3, v6, p5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v2
.end method

.method public linearCombination(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 16
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p7, "a3"    # D
    .param p9, "b3"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1040
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v6

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v10

    move-wide/from16 v0, p1

    move-wide/from16 v4, p4

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    .line 1045
    .local v2, "accurateValue":D
    move-object/from16 v4, p3

    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    invoke-virtual {v8, v6, v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    invoke-virtual {v11, v9, v10}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    .line 1048
    .local v5, "simpleValue":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v12

    .line 1049
    .local v12, "all":[D
    const/4 v13, 0x0

    aput-wide v2, v12, v13

    .line 1050
    new-instance v13, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v15

    invoke-direct {v13, v14, v15, v12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v13
.end method

.method public linearCombination(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 18
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p7, "a3"    # D
    .param p9, "b3"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p10, "a4"    # D
    .param p12, "b4"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1093
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v4

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v8

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v12

    invoke-virtual/range {p12 .. p12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v16

    move-wide/from16 v2, p1

    move-wide/from16 v6, p4

    move-wide/from16 v10, p7

    move-wide/from16 v14, p10

    invoke-static/range {v2 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v0

    .line 1099
    .local v0, "accurateValue":D
    move-object/from16 v4, p3

    invoke-virtual {v4, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    move-object/from16 v8, p6

    invoke-virtual {v8, v6, v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    move-object/from16 v9, p9

    invoke-virtual {v9, v10, v11}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    move-object/from16 v12, p12

    invoke-virtual {v12, v14, v15}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    .line 1102
    .local v5, "simpleValue":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v13

    .line 1103
    .local v13, "all":[D
    const/16 v16, 0x0

    aput-wide v0, v13, v16

    .line 1104
    move-wide/from16 v16, v0

    .end local v0    # "accurateValue":D
    .local v16, "accurateValue":D
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v2

    invoke-direct {v0, v1, v2, v13}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .param p1, "a1"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p2, "b1"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p3, "a2"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p4, "b2"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 968
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    invoke-virtual {p3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v4

    invoke-virtual {p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    .line 972
    .local v0, "accurateValue":D
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    .line 975
    .local v2, "simpleValue":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v3

    .line 976
    .local v3, "all":[D
    const/4 v4, 0x0

    aput-wide v0, v3, v4

    .line 977
    new-instance v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v6

    invoke-direct {v4, v5, v6, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v4
.end method

.method public linearCombination(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 12
    .param p1, "a1"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p2, "b1"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p3, "a2"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p4, "b2"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p5, "a3"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p6, "b3"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1015
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    invoke-virtual {p3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v4

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v8

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v0

    .line 1020
    .local v0, "accurateValue":D
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    invoke-virtual/range {p3 .. p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    invoke-virtual/range {p5 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    .line 1023
    .local v2, "simpleValue":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v3

    .line 1024
    .local v3, "all":[D
    const/4 v4, 0x0

    aput-wide v0, v3, v4

    .line 1025
    new-instance v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v6

    invoke-direct {v4, v5, v6, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v4
.end method

.method public linearCombination(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 18
    .param p1, "a1"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p2, "b1"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p3, "a2"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p4, "b2"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p5, "a3"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p6, "b3"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p7, "a4"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p8, "b4"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1066
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v8

    invoke-virtual/range {p5 .. p5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v10

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v12

    invoke-virtual/range {p7 .. p7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v14

    invoke-virtual/range {p8 .. p8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v16

    invoke-static/range {v2 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v0

    .line 1072
    .local v0, "accurateValue":D
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    invoke-virtual/range {p3 .. p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    invoke-virtual/range {p5 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    invoke-virtual/range {p7 .. p8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    .line 1075
    .local v2, "simpleValue":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v3

    .line 1076
    .local v3, "all":[D
    const/4 v4, 0x0

    aput-wide v0, v3, v4

    .line 1077
    new-instance v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v6

    invoke-direct {v4, v5, v6, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v4
.end method

.method public linearCombination([D[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 9
    .param p1, "a"    # [D
    .param p2, "b"    # [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 939
    array-length v0, p2

    new-array v0, v0, [D

    .line 940
    .local v0, "bDouble":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 941
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 940
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    .end local v1    # "i":I
    :cond_0
    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v1

    .line 946
    .local v1, "accurateValue":D
    const/4 v3, 0x0

    aget-object v4, p2, v3

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 947
    .local v4, "simpleValue":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_1

    .line 948
    aget-object v6, p2, v5

    aget-wide v7, p1, v5

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v4

    .line 947
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 952
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v5

    .line 953
    .local v5, "all":[D
    aput-wide v1, v5, v3

    .line 954
    new-instance v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v6

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v7

    invoke-direct {v3, v6, v7, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v3
.end method

.method public linearCombination([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 9
    .param p1, "a"    # [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .param p2, "b"    # [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 907
    array-length v0, p1

    new-array v0, v0, [D

    .line 908
    .local v0, "aDouble":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 909
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 908
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 911
    .end local v1    # "i":I
    :cond_0
    array-length v1, p2

    new-array v1, v1, [D

    .line 912
    .local v1, "bDouble":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 913
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 912
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 915
    .end local v2    # "i":I
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v2

    .line 918
    .local v2, "accurateValue":D
    const/4 v4, 0x0

    aget-object v5, p1, v4

    invoke-virtual {v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 919
    .local v5, "simpleValue":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v7, p1

    if-ge v6, v7, :cond_2

    .line 920
    aget-object v7, p1, v6

    aget-object v8, p2, v6

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    .line 919
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 924
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v6

    .line 925
    .local v6, "all":[D
    aput-wide v2, v6, v4

    .line 926
    new-instance v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v7

    invoke-virtual {v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v8

    invoke-direct {v4, v7, v8, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v4
.end method

.method public bridge synthetic log()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->log()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public log()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 712
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 713
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->log([DI[DI)V

    .line 714
    return-object v0
.end method

.method public log10()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 730
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 731
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->log10([DI[DI)V

    .line 732
    return-object v0
.end method

.method public bridge synthetic log1p()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->log1p()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public log1p()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 721
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 722
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->log1p([DI[DI)V

    .line 723
    return-object v0
.end method

.method public bridge synthetic multiply(D)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic multiply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 61
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5
    .param p1, "a"    # D

    .line 335
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V

    .line 336
    .local v0, "ds":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 337
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v3, v2, v1

    mul-double/2addr v3, p1

    aput-wide v3, v2, v1

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public multiply(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 2
    .param p1, "n"    # I

    .line 328
    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 349
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 350
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    .line 351
    return-object v0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 399
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 400
    .local v0, "ds":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 401
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v3, v3, v1

    neg-double v3, v3

    aput-wide v3, v2, v1

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic pow(D)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->pow(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pow(I)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->pow(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 61
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->pow(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public pow(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .param p1, "p"    # D

    .line 663
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 664
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-wide v4, p1

    .end local p1    # "p":D
    .local v4, "p":D
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->pow([DID[DI)V

    .line 665
    return-object v0
.end method

.method public pow(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7
    .param p1, "n"    # I

    .line 672
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 673
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v4, p1

    .end local p1    # "n":I
    .local v4, "n":I
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->pow([DII[DI)V

    .line 674
    return-object v0
.end method

.method public pow(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .param p1, "e"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 685
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 686
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->pow([DI[DI[DI)V

    .line 687
    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->reciprocal()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7

    .line 597
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 598
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->pow([DII[DI)V

    .line 599
    return-object v0
.end method

.method public bridge synthetic remainder(D)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->remainder(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remainder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 61
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->remainder(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public remainder(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 6
    .param p1, "a"    # D

    .line 379
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V

    .line 380
    .local v0, "ds":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    invoke-static {v4, v5, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->IEEEremainder(DD)D

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 381
    return-object v0
.end method

.method public remainder(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 392
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 393
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->remainder([DI[DI[DI)V

    .line 394
    return-object v0
.end method

.method public bridge synthetic rint()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->rint()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public rint()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 440
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method

.method public bridge synthetic rootN(I)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->rootN(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public rootN(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7
    .param p1, "n"    # I

    .line 620
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 621
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v4, p1

    .end local p1    # "n":I
    .local v4, "n":I
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->rootN([DII[DI)V

    .line 622
    return-object v0
.end method

.method public round()J
    .locals 2

    .line 447
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic scalb(I)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public scalb(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5
    .param p1, "n"    # I

    .line 499
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 500
    .local v0, "ds":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 501
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4, p1}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic signum()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->signum()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public signum()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 454
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method

.method public bridge synthetic sin()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->sin()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public sin()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 748
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 749
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sin([DI[DI)V

    .line 750
    return-object v0
.end method

.method public bridge synthetic sinh()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->sinh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public sinh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 826
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 827
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sinh([DI[DI)V

    .line 828
    return-object v0
.end method

.method public bridge synthetic sqrt()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->sqrt()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 1

    .line 606
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->rootN(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subtract(D)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->subtract(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 61
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->subtract(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method public subtract(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 2
    .param p1, "a"    # D

    .line 311
    neg-double v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 321
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V

    .line 322
    .local v0, "ds":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->subtract([DI[DI[DI)V

    .line 323
    return-object v0
.end method

.method public bridge synthetic tan()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->tan()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public tan()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 757
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 758
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->tan([DI[DI)V

    .line 759
    return-object v0
.end method

.method public bridge synthetic tanh()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->tanh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public tanh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 835
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 836
    .local v0, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, v2, v3, v4, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->tanh([DI[DI)V

    .line 837
    return-object v0
.end method

.method public varargs taylor([D)D
    .locals 3
    .param p1, "delta"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->taylor([DI[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public toDegrees()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 871
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 872
    .local v0, "ds":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 873
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->toDegrees(D)D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 872
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public toRadians()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 882
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 883
    .local v0, "ds":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 884
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
