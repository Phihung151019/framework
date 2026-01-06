.class public Lcom/android/location/provider/FusedLocationHardwareSink;
.super Ljava/lang/Object;
.source "FusedLocationHardwareSink.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilities(I)V
    .locals 0
    .param p1, "capabilities"    # I

    .line 58
    return-void
.end method

.method public onDiagnosticDataAvailable(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 47
    return-void
.end method

.method public onLocationAvailable([Landroid/location/Location;)V
    .locals 0
    .param p1, "locations"    # [Landroid/location/Location;

    .line 40
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0
    .param p1, "status"    # I

    .line 72
    return-void
.end method
