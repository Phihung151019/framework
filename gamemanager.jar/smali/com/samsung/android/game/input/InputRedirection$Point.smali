.class public Lcom/samsung/android/game/input/InputRedirection$Point;
.super Ljava/lang/Object;
.source "InputRedirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/input/InputRedirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Point"
.end annotation


# instance fields
.field coords:Landroid/view/MotionEvent$PointerCoords;

.field cpIdx:I

.field display:I

.field id:I

.field mapped:I

.field needCopy:Z

.field oriId:I

.field properties:Landroid/view/MotionEvent$PointerProperties;

.field tag:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(Lcom/samsung/android/game/input/InputRedirection;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/game/input/InputRedirection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    .line 98
    new-instance v0, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/input/InputRedirection$Point;->properties:Landroid/view/MotionEvent$PointerProperties;

    .line 99
    return-void
.end method
