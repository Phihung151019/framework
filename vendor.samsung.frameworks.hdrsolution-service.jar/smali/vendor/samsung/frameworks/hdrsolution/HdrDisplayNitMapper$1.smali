.class Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;
.super Ljava/lang/Object;
.source "HdrDisplayNitMapper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;


# direct methods
.method constructor <init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IF)V
    .locals 8
    .param p1, "displayID"    # I
    .param p2, "brightness"    # F

    .line 378
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmSupportRealTimePanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    .line 380
    .local v0, "platformBrightness":I
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmPanelNitsArray(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)[F

    move-result-object v1

    array-length v1, v1

    .line 381
    .local v1, "arrLen":I
    move v2, v0

    .line 383
    .local v2, "actualBrightness":I
    add-int/lit8 v3, v1, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 384
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    iget-object v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmPanelNitsArray(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)[F

    move-result-object v4

    aget v4, v4, v2

    invoke-static {v3, v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V

    .line 386
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v3

    const-string v4, "HdrSolution_HdrDisplayNitMapper"

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisplayBrightnessListener-- Display ID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " brightness: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mPanelNit: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$mupdateTargetNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V

    .line 393
    const-string v3, "("

    const-string v5, "Panel BRT : "

    if-ne v2, v0, :cond_1

    .line 394
    iget-object v6, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v6}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "hdr.panel_nit"

    invoke-static {v7, v6}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v6, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v6}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v6

    if-lez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "nit)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "nit) Out of Bound("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v0    # "platformBrightness":I
    .end local v1    # "arrLen":I
    .end local v2    # "actualBrightness":I
    :cond_2
    :goto_0
    return-void
.end method
