.class Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;
.super Ljava/lang/Object;
.source "SemContextConnectionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextConnectionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SContextInfo"
.end annotation


# instance fields
.field private mInfo:Landroid/hardware/SensorAdditionalInfo;


# direct methods
.method static bridge synthetic -$$Nest$fgetmInfo(Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;)Landroid/hardware/SensorAdditionalInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;->mInfo:Landroid/hardware/SensorAdditionalInfo;

    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextConnectionList;II)V
    .locals 3
    .param p2, "data"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 400
    .local v0, "intarray":[I
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 401
    aput p3, v0, v2

    .line 402
    const/4 v1, 0x2

    aput p2, v0, v1

    .line 403
    invoke-static {p1}, Lcom/samsung/android/hardware/context/SemContextConnectionList;->-$$Nest$fgetmHubSensor(Lcom/samsung/android/hardware/context/SemContextConnectionList;)Landroid/hardware/Sensor;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;->mInfo:Landroid/hardware/SensorAdditionalInfo;

    .line 404
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextConnectionList;I[BI)V
    .locals 11
    .param p2, "datasize"    # I
    .param p3, "data"    # [B
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 376
    .local v0, "intBuf":Ljava/nio/IntBuffer;
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 377
    .local v1, "length_ints":I
    rem-int/lit8 v3, p2, 0x4

    .line 379
    .local v3, "remainder":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    div-int/lit8 v7, p2, 0x4

    add-int/lit8 v7, v7, 0x3

    if-ge v1, v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 380
    add-int/lit8 v1, v1, 0x1

    .line 382
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "intarray : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SemContextConnectionList"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-array v6, v1, [I

    .line 384
    .local v6, "intarray":[I
    if-lez v3, :cond_4

    .line 385
    const/4 v7, 0x4

    new-array v7, v7, [B

    .line 386
    .local v7, "temp":[B
    move v8, v3

    .local v8, "i":I
    :goto_2
    if-lez v8, :cond_3

    .line 387
    sub-int v9, v3, v8

    sub-int v10, p2, v8

    aget-byte v10, p3, v10

    aput-byte v10, v7, v9

    .line 386
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 390
    .end local v8    # "i":I
    :cond_3
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 391
    .local v8, "bytes":Ljava/nio/ByteBuffer;
    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    aput v10, v6, v9

    .line 393
    .end local v7    # "temp":[B
    .end local v8    # "bytes":Ljava/nio/ByteBuffer;
    :cond_4
    aput p2, v6, v4

    .line 394
    aput p4, v6, v5

    .line 395
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    invoke-virtual {v0, v6, v2, v4}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    .line 396
    invoke-static {p1}, Lcom/samsung/android/hardware/context/SemContextConnectionList;->-$$Nest$fgetmHubSensor(Lcom/samsung/android/hardware/context/SemContextConnectionList;)Landroid/hardware/Sensor;

    move-result-object p1

    invoke-static {p1, v6}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;->mInfo:Landroid/hardware/SensorAdditionalInfo;

    .line 397
    return-void
.end method
