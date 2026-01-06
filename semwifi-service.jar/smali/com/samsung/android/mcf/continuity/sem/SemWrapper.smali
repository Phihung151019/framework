.class public final Lcom/samsung/android/mcf/continuity/sem/SemWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final BUILD_VERSION_PLATFORM_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 2
    .line 3
    sput v0, Lcom/samsung/android/mcf/continuity/sem/SemWrapper;->BUILD_VERSION_PLATFORM_INT:I

    .line 4
    .line 5
    return-void
.end method
