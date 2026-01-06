.class public final Lcom/android/devicediagnostics/commands/Commands;
.super Ljava/lang/Object;
.source "Commands.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/devicediagnostics/commands/Commands$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/android/devicediagnostics/commands/Commands;",
        "",
        "<init>",
        "()V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/android/devicediagnostics/commands/Commands$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/devicediagnostics/commands/Commands$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/devicediagnostics/commands/Commands$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/devicediagnostics/commands/Commands;->Companion:Lcom/android/devicediagnostics/commands/Commands$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/devicediagnostics/commands/Commands;->Companion:Lcom/android/devicediagnostics/commands/Commands$Companion;

    invoke-virtual {v0, p0}, Lcom/android/devicediagnostics/commands/Commands$Companion;->main([Ljava/lang/String;)V

    .line 76
    return-void
.end method
