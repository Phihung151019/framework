.class public Lcom/samsung/android/hardware/context/lib/PedometerEngine;
.super Ljava/lang/Object;
.source "PedometerEngine.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "SecPedometer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public native native_Pedometer_getCalculate_data(I[J[JIJ[J[J[J[D[D[D[J[J[J[D[D[I[D)V
.end method

.method public native native_pedometer_initialize(IDD)V
.end method
