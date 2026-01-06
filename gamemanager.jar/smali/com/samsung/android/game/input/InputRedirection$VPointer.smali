.class public Lcom/samsung/android/game/input/InputRedirection$VPointer;
.super Ljava/lang/Object;
.source "InputRedirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/input/InputRedirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VPointer"
.end annotation


# instance fields
.field x:I

.field y:I


# direct methods
.method constructor <init>(Lcom/samsung/android/game/input/InputRedirection;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/game/input/InputRedirection;
    .param p2, "x0"    # I
    .param p3, "y0"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p2, p0, Lcom/samsung/android/game/input/InputRedirection$VPointer;->x:I

    .line 206
    iput p3, p0, Lcom/samsung/android/game/input/InputRedirection$VPointer;->y:I

    .line 207
    return-void
.end method
