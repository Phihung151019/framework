.class public interface abstract Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PerformanceExpectationQuery"
.end annotation


# virtual methods
.method public queryPerformance()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
