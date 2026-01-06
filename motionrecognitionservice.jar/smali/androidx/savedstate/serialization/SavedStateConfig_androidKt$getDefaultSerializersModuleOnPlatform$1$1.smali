.class final Landroidx/savedstate/serialization/SavedStateConfig_androidKt$getDefaultSerializersModuleOnPlatform$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SavedStateConfig.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/savedstate/serialization/SavedStateConfig_androidKt;->getDefaultSerializersModuleOnPlatform()Lkotlinx/serialization/modules/SerializersModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lkotlinx/serialization/KSerializer<",
        "*>;>;",
        "Lkotlinx/serialization/KSerializer<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u0006\u0012\u0002\u0008\u00030\u00012\u0010\u0010\u0002\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/serialization/KSerializer;",
        "argSerializers",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/savedstate/serialization/SavedStateConfig_androidKt$getDefaultSerializersModuleOnPlatform$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/savedstate/serialization/SavedStateConfig_androidKt$getDefaultSerializersModuleOnPlatform$1$1;

    invoke-direct {v0}, Landroidx/savedstate/serialization/SavedStateConfig_androidKt$getDefaultSerializersModuleOnPlatform$1$1;-><init>()V

    sput-object v0, Landroidx/savedstate/serialization/SavedStateConfig_androidKt$getDefaultSerializersModuleOnPlatform$1$1;->INSTANCE:Landroidx/savedstate/serialization/SavedStateConfig_androidKt$getDefaultSerializersModuleOnPlatform$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 29
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/savedstate/serialization/SavedStateConfig_androidKt$getDefaultSerializersModuleOnPlatform$1$1;->invoke(Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 2
    .param p1, "argSerializers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const-string v0, "argSerializers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
