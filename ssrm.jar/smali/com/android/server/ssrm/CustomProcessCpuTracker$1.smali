.class Lcom/android/server/ssrm/CustomProcessCpuTracker$1;
.super Ljava/lang/Object;
.source "CustomProcessCpuTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomProcessCpuTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;)I
    .locals 6
    .param p1, "sta"    # Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .param p2, "stb"    # Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 329
    iget v0, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    iget v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v0, v1

    .line 330
    .local v0, "ta":I
    iget v1, p2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    iget v2, p2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v1, v2

    .line 331
    .local v1, "tb":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 332
    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 334
    :cond_1
    iget-boolean v4, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->added:Z

    iget-boolean v5, p2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->added:Z

    if-eq v4, v5, :cond_3

    .line 335
    iget-boolean v4, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->added:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    .line 337
    :cond_3
    iget-boolean v4, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->removed:Z

    iget-boolean v5, p2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->removed:Z

    if-eq v4, v5, :cond_5

    .line 338
    iget-boolean v4, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->removed:Z

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2

    .line 340
    :cond_5
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 326
    check-cast p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    check-cast p2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomProcessCpuTracker$1;->compare(Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;)I

    move-result p1

    return p1
.end method
