.class Lcom/samsung/android/wfd/WFDMode$WFDPresentation;
.super Ljava/lang/Object;
.source "WFDMode.java"

# interfaces
.implements Lcom/samsung/android/wfd/ConnectionMode$ModeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wfd/WFDMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WFDPresentation"
.end annotation


# static fields
.field private static final innerTAG:Ljava/lang/String; = "WFDPresentation"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/wfd/WFDMode;


# direct methods
.method private constructor <init>(Lcom/samsung/android/wfd/WFDMode;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/wfd/WFDMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 516
    iput-object p1, p0, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;->this$0:Lcom/samsung/android/wfd/WFDMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 518
    const-string v0, "WFDMode"

    const-string v1, "WFDPresentation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/wfd/WFDMode;Lcom/samsung/android/wfd/WFDMode-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;-><init>(Lcom/samsung/android/wfd/WFDMode;)V

    return-void
.end method


# virtual methods
.method public getTAG()Ljava/lang/String;
    .locals 1

    .line 522
    const-string v0, "WFDPresentation"

    return-object v0
.end method

.method public updateTouchInput(I)V
    .locals 3
    .param p1, "pointerIndex"    # I

    .line 526
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 527
    const-string v0, "WFDMode"

    const-string v1, "WFDMode is PRESENTATION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v0, v0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v0, v0, p1

    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v2, v2, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 530
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v0, v0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v0, v0, p1

    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v2, v2, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 531
    return-void
.end method
