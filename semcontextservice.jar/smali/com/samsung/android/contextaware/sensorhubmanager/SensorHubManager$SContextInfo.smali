.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SContextInfo"
.end annotation


# instance fields
.field private mInfo:Landroid/hardware/SensorAdditionalInfo;

.field protected mIsDone:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmInfo(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;)Landroid/hardware/SensorAdditionalInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->mInfo:Landroid/hardware/SensorAdditionalInfo;

    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;I[B)V
    .locals 10
    .param p2, "datasize"    # I
    .param p3, "data"    # [B
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

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 73
    .local v0, "intBuf":Ljava/nio/IntBuffer;
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 74
    .local v1, "length_ints":I
    rem-int/lit8 v3, p2, 0x4

    .line 76
    .local v3, "remainder":I
    const/4 v4, 0x0

    if-lez v3, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    div-int/lit8 v6, p2, 0x4

    add-int/lit8 v6, v6, 0x2

    if-ge v1, v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 79
    :cond_2
    new-array v5, v1, [I

    .line 80
    .local v5, "intarray":[I
    if-lez v3, :cond_4

    .line 81
    const/4 v6, 0x4

    new-array v6, v6, [B

    .line 82
    .local v6, "temp":[B
    move v7, v3

    .local v7, "i":I
    :goto_2
    if-lez v7, :cond_3

    .line 83
    sub-int v8, v3, v7

    sub-int v9, p2, v7

    aget-byte v9, p3, v9

    aput-byte v9, v6, v8

    .line 82
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 86
    .end local v7    # "i":I
    :cond_3
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 87
    .local v7, "bytes":Ljava/nio/ByteBuffer;
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    aput v9, v5, v8

    .line 89
    .end local v6    # "temp":[B
    .end local v7    # "bytes":Ljava/nio/ByteBuffer;
    :cond_4
    aput p2, v5, v4

    .line 90
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v6

    invoke-virtual {v0, v5, v2, v6}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    .line 91
    invoke-static {p1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-$$Nest$fgetmHubSensor(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/hardware/Sensor;

    move-result-object p1

    invoke-static {p1, v5}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->mInfo:Landroid/hardware/SensorAdditionalInfo;

    .line 92
    iput-boolean v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->mIsDone:Z

    .line 93
    return-void
.end method
