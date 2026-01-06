.class public Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;
.super Ljava/lang/Object;
.source "CustomProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomProcessCpuTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CcuStats"
.end annotation


# instance fields
.field public cpuFreqTimeMs:[J

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
