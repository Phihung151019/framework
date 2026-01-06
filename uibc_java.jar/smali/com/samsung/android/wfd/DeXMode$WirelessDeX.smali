.class Lcom/samsung/android/wfd/DeXMode$WirelessDeX;
.super Ljava/lang/Object;
.source "DeXMode.java"

# interfaces
.implements Lcom/samsung/android/wfd/ConnectionMode$ModeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wfd/DeXMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WirelessDeX"
.end annotation


# static fields
.field private static final innerTAG:Ljava/lang/String; = "WirelessDeX"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/wfd/DeXMode;


# direct methods
.method private constructor <init>(Lcom/samsung/android/wfd/DeXMode;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/wfd/DeXMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 614
    iput-object p1, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 616
    const-string v0, "DeXMode"

    const-string v1, "WirelessDeX"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/wfd/DeXMode;->-$$Nest$mregisterDexSettingObserver(Lcom/samsung/android/wfd/DeXMode;)V

    .line 619
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/wfd/DeXMode;Lcom/samsung/android/wfd/DeXMode-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;-><init>(Lcom/samsung/android/wfd/DeXMode;)V

    return-void
.end method


# virtual methods
.method public getTAG()Ljava/lang/String;
    .locals 1

    .line 621
    const-string v0, "WirelessDeX"

    return-object v0
.end method

.method public updateTouchInput(I)V
    .locals 5
    .param p1, "pointerIndex"    # I

    .line 625
    const/high16 v0, 0x3f800000    # 1.0f

    .line 626
    .local v0, "inputX":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 628
    .local v1, "inputY":F
    sget-boolean v2, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 629
    const-string v2, "DeXMode"

    const-string v3, "WFDMode is WIRELESS_DEX"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    sget-boolean v2, Lcom/samsung/android/wfd/ConnectionMode;->mIsPortraitMode:Z

    if-eqz v2, :cond_1

    .line 632
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v2, v2, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v3, v3, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v2, v3

    .line 633
    .end local v0    # "inputX":F
    .local v2, "inputX":F
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v0, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v3, v3, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v0, v3

    .end local v1    # "inputY":F
    .local v0, "inputY":F
    goto/16 :goto_0

    .line 635
    .end local v2    # "inputX":F
    .local v0, "inputX":F
    .restart local v1    # "inputY":F
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v2, v2, Lcom/samsung/android/wfd/DeXMode;->mRotationStatus:I

    if-nez v2, :cond_2

    .line 636
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v2, v2, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v3, v3, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v2, v3

    .line 637
    .end local v0    # "inputX":F
    .restart local v2    # "inputX":F
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v0, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v3, v3, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v0, v3

    .end local v1    # "inputY":F
    .local v0, "inputY":F
    goto/16 :goto_0

    .line 638
    .end local v2    # "inputX":F
    .local v0, "inputX":F
    .restart local v1    # "inputY":F
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v2, v2, Lcom/samsung/android/wfd/DeXMode;->mRotationStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 639
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v2, v2, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v3, v3, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v2, v3

    .line 640
    .end local v0    # "inputX":F
    .restart local v2    # "inputX":F
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v0, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v3, v3, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    iget-object v4, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v4, v4, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    .end local v1    # "inputY":F
    .local v0, "inputY":F
    goto :goto_0

    .line 641
    .end local v2    # "inputX":F
    .local v0, "inputX":F
    .restart local v1    # "inputY":F
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v2, v2, Lcom/samsung/android/wfd/DeXMode;->mRotationStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 642
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v2, v2, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v3, v3, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    iget-object v4, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v4, v4, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 643
    .end local v0    # "inputX":F
    .restart local v2    # "inputX":F
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v0, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v3, v3, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    iget-object v4, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v4, v4, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    .end local v1    # "inputY":F
    .local v0, "inputY":F
    goto :goto_0

    .line 645
    .end local v2    # "inputX":F
    .local v0, "inputX":F
    .restart local v1    # "inputY":F
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v2, v2, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v3, v3, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    iget-object v4, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v4, v4, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 646
    .end local v0    # "inputX":F
    .restart local v2    # "inputX":F
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v0, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v3, v3, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v0, v3

    .line 650
    .end local v1    # "inputY":F
    .local v0, "inputY":F
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v1, v1, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v1, v1, p1

    iput v2, v1, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 651
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v1, v1, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v1, v1, p1

    iput v0, v1, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 652
    return-void
.end method
