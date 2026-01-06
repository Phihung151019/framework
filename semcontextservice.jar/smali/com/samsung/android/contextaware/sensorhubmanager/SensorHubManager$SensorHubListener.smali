.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;
.super Ljava/lang/Object;
.source "SensorHubManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHubListener"
.end annotation


# instance fields
.field mHeader:Ljava/nio/ByteBuffer;

.field private final mHubCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHubDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    .line 98
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubDataMap:Ljava/util/HashMap;

    .line 99
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubCountMap:Ljava/util/HashMap;

    .line 101
    const/16 p1, 0x8

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    .line 102
    iget-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 103
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 189
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 107
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 108
    .local v0, "timestamp":Ljava/lang/Long;
    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 109
    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 110
    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 111
    .local v1, "total":I
    iget-object v2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    .line 112
    .local v2, "start":I
    iget-object v5, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHeader:Ljava/nio/ByteBuffer;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    .line 114
    .local v5, "end":I
    const-string v6, "SensorHubManager"

    if-lez v1, :cond_b

    const/16 v7, 0x400

    if-gt v1, v7, :cond_b

    if-ltz v2, :cond_b

    if-gt v2, v1, :cond_b

    if-lez v5, :cond_b

    if-le v5, v1, :cond_0

    goto/16 :goto_4

    .line 119
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubDataMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 120
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    iget-object v8, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubCountMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 122
    .local v8, "bufferCount":Ljava/lang/Integer;
    if-eqz v7, :cond_1

    .line 123
    iget-object v9, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubDataMap:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1
    if-eqz v8, :cond_2

    .line 126
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubCountMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 131
    :goto_0
    if-nez v7, :cond_3

    .line 132
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-$$Nest$fgetmPool(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->getBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 134
    :cond_3
    if-nez v7, :cond_4

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no buffer for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 138
    :cond_4
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-le v1, v3, :cond_5

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong timestamp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , buffer size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , total : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 142
    :cond_5
    const/4 v3, 0x2

    .line 143
    .local v3, "bufferindex":I
    move v9, v2

    .local v9, "i":I
    :goto_1
    if-gt v9, v5, :cond_7

    .line 144
    const/16 v10, 0xf

    if-le v3, v10, :cond_6

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data is too big"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 148
    :cond_6
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    add-int/lit8 v11, v3, 0x1

    .end local v3    # "bufferindex":I
    .local v11, "bufferindex":I
    aget v3, v10, v3

    invoke-virtual {v7, v9, v3}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 143
    add-int/lit8 v9, v9, 0x4

    move v3, v11

    goto :goto_1

    .line 151
    .end local v9    # "i":I
    .end local v11    # "bufferindex":I
    .restart local v3    # "bufferindex":I
    :cond_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int v10, v5, v2

    add-int/2addr v10, v4

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 170
    .end local v8    # "bufferCount":Ljava/lang/Integer;
    .local v4, "bufferCount":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v1, :cond_9

    .line 171
    iget-object v6, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v6}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-$$Nest$fgetmListeners(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 172
    .local v6, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v6, :cond_8

    .line 173
    iget-object v9, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v9}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-$$Nest$fgetmListeners(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    .line 174
    .local v9, "listener":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v9, v10, v1, v11, v12}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->onGetSensorHubDataLocked([BIJ)V

    .line 172
    .end local v9    # "listener":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 176
    .end local v8    # "i":I
    :cond_8
    iget-object v8, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v8}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-$$Nest$fgetmPool(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->returnBuffer(Ljava/nio/ByteBuffer;)V

    .line 177
    .end local v6    # "size":I
    goto :goto_3

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v1, :cond_a

    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The Packet is bigger than data size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 180
    :cond_a
    iget-object v8, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubDataMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v8, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubCountMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHubDataMap size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->mHubDataMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", buffer count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timestamp : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_3
    return-void

    .line 115
    .end local v3    # "bufferindex":I
    .end local v4    # "bufferCount":Ljava/lang/Integer;
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    :cond_b
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSensorChanged : wrong data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-$$Nest$fgetmCtx(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2, v5, p1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubErrorHandler;->handleError(Landroid/content/Context;IIILandroid/hardware/SensorEvent;)V

    .line 117
    return-void
.end method
