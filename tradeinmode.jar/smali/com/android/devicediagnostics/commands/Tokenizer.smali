.class public final Lcom/android/devicediagnostics/commands/Tokenizer;
.super Ljava/lang/Object;
.source "Commands.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u000b\u001a\u00020\u000cR\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/android/devicediagnostics/commands/Tokenizer;",
        "",
        "args",
        "",
        "",
        "<init>",
        "([Ljava/lang/String;)V",
        "[Ljava/lang/String;",
        "cursor",
        "",
        "next",
        "more",
        "",
        "packages__apps__DeviceDiagnostics__tradeinmode__android_common__tradeinmode"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final args:[Ljava/lang/String;

.field private cursor:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/devicediagnostics/commands/Tokenizer;->args:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final more()Z
    .locals 2

    .line 44
    iget v0, p0, Lcom/android/devicediagnostics/commands/Tokenizer;->cursor:I

    iget-object v1, p0, Lcom/android/devicediagnostics/commands/Tokenizer;->args:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/String;
    .locals 3

    .line 39
    iget v0, p0, Lcom/android/devicediagnostics/commands/Tokenizer;->cursor:I

    iget-object v1, p0, Lcom/android/devicediagnostics/commands/Tokenizer;->args:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/devicediagnostics/commands/Tokenizer;->args:[Ljava/lang/String;

    iget v1, p0, Lcom/android/devicediagnostics/commands/Tokenizer;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/devicediagnostics/commands/Tokenizer;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method
