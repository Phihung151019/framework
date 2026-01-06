.class Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;
.super Ljava/lang/Object;
.source "ConfigBuilderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation


# instance fields
.field configName:Ljava/lang/String;

.field configValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "configName"    # Ljava/lang/String;
    .param p2, "configValue"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;->configValue:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;
    .locals 1
    .param p0, "configName"    # Ljava/lang/String;
    .param p1, "configValue"    # Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/uwb/calibration/ConfigBuilderWrapper$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
