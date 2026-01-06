.class final Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;
.super Ljava/lang/Object;
.source "CustomCpuInfoReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomCpuInfoReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DynamicPolicyInfo"
.end annotation


# instance fields
.field public final affectedCpuCores:Landroid/util/IntArray;

.field public final avgTimeInStateCpuFreqKHz:J

.field public final curCpuFreqKHz:J

.field public final maxCpuFreqKHz:J


# direct methods
.method constructor <init>(JJJLandroid/util/IntArray;)V
    .locals 0
    .param p1, "curCpuFreqKHz"    # J
    .param p3, "maxCpuFreqKHz"    # J
    .param p5, "avgTimeInStateCpuFreqKHz"    # J
    .param p7, "affectedCpuCores"    # Landroid/util/IntArray;

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-wide p1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    .line 636
    iput-wide p3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    .line 637
    iput-wide p5, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->avgTimeInStateCpuFreqKHz:J

    .line 638
    iput-object p7, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->affectedCpuCores:Landroid/util/IntArray;

    .line 639
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicPolicyInfo{curCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgTimeInStateCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->avgTimeInStateCpuFreqKHz:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", affectedCpuCores = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->affectedCpuCores:Landroid/util/IntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
