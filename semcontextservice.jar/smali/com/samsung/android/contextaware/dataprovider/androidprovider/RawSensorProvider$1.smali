.class Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;
.super Ljava/lang/Object;
.source "RawSensorProvider.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 76
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$000(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 88
    const-string v3, "SystemTime"

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$100(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const-string v1, "TimeStamp"

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$200(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const-string v1, "Accuracy"

    iget v2, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 96
    .local v1, "valueLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 97
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$300(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v2

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->notifyObserver()V

    .line 101
    return-void
.end method
