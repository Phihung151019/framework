.class public Lcom/samsung/android/media/face/SemFaceRecognition;
.super Ljava/lang/Object;
.source "SemFaceRecognition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/face/SemFaceRecognition$ClusterInfo;,
        Lcom/samsung/android/media/face/SemFaceRecognition$Cluster;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemFaceRecognition"

.field private static sRecognitionInstance:Lcom/samsung/android/media/face/SemFaceRecognition;


# instance fields
.field private mFace:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mImageHeight:I

.field private mImageWidth:I

.field private mLandmark:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/face/SemFaceRecognition;->sRecognitionInstance:Lcom/samsung/android/media/face/SemFaceRecognition;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mFace:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mLandmark:Ljava/util/ArrayList;

    .line 78
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/media/face/SemFaceRecognition;
    .locals 2

    .line 85
    sget-object v0, Lcom/samsung/android/media/face/SemFaceRecognition;->sRecognitionInstance:Lcom/samsung/android/media/face/SemFaceRecognition;

    if-nez v0, :cond_0

    .line 86
    const-string v0, "SemFaceRecognition"

    const-string v1, "create new instance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Lcom/samsung/android/media/face/SemFaceRecognition;

    invoke-direct {v0}, Lcom/samsung/android/media/face/SemFaceRecognition;-><init>()V

    sput-object v0, Lcom/samsung/android/media/face/SemFaceRecognition;->sRecognitionInstance:Lcom/samsung/android/media/face/SemFaceRecognition;

    .line 89
    :cond_0
    sget-object v0, Lcom/samsung/android/media/face/SemFaceRecognition;->sRecognitionInstance:Lcom/samsung/android/media/face/SemFaceRecognition;

    return-object v0
.end method


# virtual methods
.method public compareFeature(III)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "feature1"    # I
    .param p3, "feature2"    # I

    .line 289
    invoke-static {p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionCompareFeature(III)I

    move-result v0

    return v0
.end method

.method public compareFeature(I[I[I)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "ids1"    # [I
    .param p3, "ids2"    # [I

    .line 300
    invoke-static {p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionCompareFeatures(I[I[I)I

    move-result v0

    return v0
.end method

.method public create()I
    .locals 1

    .line 120
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionCreate()I

    move-result v0

    return v0
.end method

.method public doClustering()I
    .locals 1

    .line 228
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionDoClustering()I

    move-result v0

    return v0
.end method

.method public extractFaceFeature(II)I
    .locals 3
    .param p1, "faceIndex"    # I
    .param p2, "featureId"    # I

    .line 209
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mLandmark:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Point;

    .line 210
    .local v0, "landmark":[Landroid/graphics/Point;
    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mFace:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 211
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-static {v1, v0, p2}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionExtractFeature(Landroid/graphics/Rect;[Landroid/graphics/Point;I)I

    move-result v2

    return v2
.end method

.method public findFace(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "data"    # Landroid/graphics/Bitmap;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mFace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mLandmark:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mImageWidth:I

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mImageHeight:I

    .line 155
    invoke-static {p1}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionFindFaceOnBitmap(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public findFace([BII)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .line 138
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mFace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mLandmark:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iput p2, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mImageWidth:I

    .line 141
    iput p3, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mImageHeight:I

    .line 142
    invoke-static {p1, p2, p3}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionFindFace([BII)I

    move-result v0

    return v0
.end method

.method public getClusteringInfo()Lcom/samsung/android/media/face/SemFaceRecognition$ClusterInfo;
    .locals 1

    .line 236
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionGetClusterInfo()Lcom/samsung/android/media/face/SemFaceRecognition$ClusterInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFacePose(I)I
    .locals 1
    .param p1, "faceIndex"    # I

    .line 199
    invoke-static {p1}, Lcom/samsung/android/media/face/SemFaceNativeApi;->detectionGetFacePose(I)I

    move-result v0

    return v0
.end method

.method public getFaceRect(II)Landroid/graphics/Rect;
    .locals 9
    .param p1, "faceIndex"    # I
    .param p2, "orientation"    # I

    .line 165
    invoke-static {p1}, Lcom/samsung/android/media/face/SemFaceNativeApi;->detectionGetFaceRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 166
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mFace:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 168
    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionFindLandmark(Landroid/graphics/Rect;)[Landroid/graphics/Point;

    move-result-object v1

    .line 169
    .local v1, "landmark":[Landroid/graphics/Point;
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mLandmark:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 173
    iget v2, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mImageWidth:I

    .line 174
    .local v2, "width":I
    iget v3, p0, Lcom/samsung/android/media/face/SemFaceRecognition;->mImageHeight:I

    .line 176
    .local v3, "height":I
    sparse-switch p2, :sswitch_data_0

    .line 187
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v4, "rectObject":Landroid/graphics/Rect;
    goto :goto_0

    .line 184
    .end local v4    # "rectObject":Landroid/graphics/Rect;
    :sswitch_0
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v3, v5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v3, v7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 185
    .restart local v4    # "rectObject":Landroid/graphics/Rect;
    goto :goto_0

    .line 181
    .end local v4    # "rectObject":Landroid/graphics/Rect;
    :sswitch_1
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int v5, v2, v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v3, v6

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v2, v7

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int v8, v3, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 182
    .restart local v4    # "rectObject":Landroid/graphics/Rect;
    goto :goto_0

    .line 178
    .end local v4    # "rectObject":Landroid/graphics/Rect;
    :sswitch_2
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int v6, v2, v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int v8, v2, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 179
    .restart local v4    # "rectObject":Landroid/graphics/Rect;
    nop

    .line 190
    :goto_0
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public initFD()I
    .locals 1

    .line 252
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceNativeApi;->detectionCreate()I

    move-result v0

    return v0
.end method

.method public loadClusterData(Lcom/samsung/android/media/face/SemFaceRecognition$ClusterInfo;)V
    .locals 0
    .param p1, "cluster"    # Lcom/samsung/android/media/face/SemFaceRecognition$ClusterInfo;

    .line 244
    invoke-static {p1}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionLoadClusterData(Lcom/samsung/android/media/face/SemFaceRecognition$ClusterInfo;)V

    .line 245
    return-void
.end method

.method public loadFaceFeature(I)I
    .locals 1
    .param p1, "featureId"    # I

    .line 220
    invoke-static {p1}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionLoadFeature(I)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    .line 127
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionDestroy()I

    .line 128
    return-void
.end method

.method public releaseFD()V
    .locals 0

    .line 259
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceNativeApi;->detectionDestroy()V

    .line 260
    return-void
.end method

.method public setFaceDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "faceDir"    # Ljava/lang/String;
    .param p2, "thumbnailDir"    # Ljava/lang/String;

    .line 111
    invoke-static {p1, p2}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionSetFaceDir(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public setThumbnailSize(I)V
    .locals 0
    .param p1, "width"    # I

    .line 267
    invoke-static {p1}, Lcom/samsung/android/media/face/SemFaceNativeApi;->recognitionSetThumbnailSize(I)V

    .line 268
    return-void
.end method
