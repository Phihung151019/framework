.class Lcom/samsung/android/wfd/WFDMode$WFDAppCast;
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
    name = "WFDAppCast"
.end annotation


# static fields
.field private static final innerTAG:Ljava/lang/String; = "WFDAppCast"


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

    .line 537
    iput-object p1, p0, Lcom/samsung/android/wfd/WFDMode$WFDAppCast;->this$0:Lcom/samsung/android/wfd/WFDMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 539
    const-string v0, "WFDMode"

    const-string v1, "WFDAppCast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/wfd/WFDMode;Lcom/samsung/android/wfd/WFDMode-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wfd/WFDMode$WFDAppCast;-><init>(Lcom/samsung/android/wfd/WFDMode;)V

    return-void
.end method


# virtual methods
.method public getTAG()Ljava/lang/String;
    .locals 1

    .line 543
    const-string v0, "WFDAppCast"

    return-object v0
.end method

.method public updateTouchInput(I)V
    .locals 3
    .param p1, "pointerIndex"    # I

    .line 547
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 548
    const-string v0, "WFDMode"

    const-string v1, "WFDMode is WFDAppCast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode$WFDAppCast;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v0, v0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v0, v0, p1

    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode$WFDAppCast;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v2, v2, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 551
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode$WFDAppCast;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v0, v0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v0, v0, p1

    iget v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode$WFDAppCast;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v2, v2, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 552
    return-void
.end method
