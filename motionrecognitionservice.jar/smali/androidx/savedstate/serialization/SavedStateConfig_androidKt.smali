.class public final Landroidx/savedstate/serialization/SavedStateConfig_androidKt;
.super Ljava/lang/Object;
.source "SavedStateConfig.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavedStateConfig.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateConfig.android.kt\nandroidx/savedstate/serialization/SavedStateConfig_androidKt\n+ 2 SerializersModuleBuilders.kt\nkotlinx/serialization/modules/SerializersModuleBuildersKt\n*L\n1#1,33:1\n31#2,2:34\n241#2:36\n241#2:37\n33#2:38\n*S KotlinDebug\n*F\n+ 1 SavedStateConfig.android.kt\nandroidx/savedstate/serialization/SavedStateConfig_androidKt\n*L\n26#1:34,2\n27#1:36\n28#1:37\n26#1:38\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0000\u00a8\u0006\u0002"
    }
    d2 = {
        "getDefaultSerializersModuleOnPlatform",
        "Lkotlinx/serialization/modules/SerializersModule;",
        "savedstate_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getDefaultSerializersModuleOnPlatform()Lkotlinx/serialization/modules/SerializersModule;
    .locals 8

    .line 26
    const/4 v0, 0x0

    .line 34
    .local v0, "$i$f$SerializersModule":I
    new-instance v1, Lkotlinx/serialization/modules/SerializersModuleBuilder;

    invoke-direct {v1}, Lkotlinx/serialization/modules/SerializersModuleBuilder;-><init>()V

    .line 35
    .local v1, "builder$iv":Lkotlinx/serialization/modules/SerializersModuleBuilder;
    move-object v2, v1

    .local v2, "$this$getDefaultSerializersModuleOnPlatform_u24lambda_u240":Lkotlinx/serialization/modules/SerializersModuleBuilder;
    const/4 v3, 0x0

    .line 27
    .local v3, "$i$a$-SerializersModule-SavedStateConfig_androidKt$getDefaultSerializersModuleOnPlatform$1":I
    sget-object v4, Landroidx/savedstate/serialization/serializers/SizeSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/SizeSerializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    .local v4, "serializer$iv":Lkotlinx/serialization/KSerializer;
    move-object v5, v2

    .local v5, "$this$contextual$iv":Lkotlinx/serialization/modules/SerializersModuleBuilder;
    const/4 v6, 0x0

    .line 36
    .local v6, "$i$f$contextual":I
    const-class v7, Landroid/util/Size;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->contextual(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V

    .line 28
    .end local v4    # "serializer$iv":Lkotlinx/serialization/KSerializer;
    .end local v5    # "$this$contextual$iv":Lkotlinx/serialization/modules/SerializersModuleBuilder;
    .end local v6    # "$i$f$contextual":I
    sget-object v4, Landroidx/savedstate/serialization/serializers/SizeFSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/SizeFSerializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    .restart local v4    # "serializer$iv":Lkotlinx/serialization/KSerializer;
    .restart local v5    # "$this$contextual$iv":Lkotlinx/serialization/modules/SerializersModuleBuilder;
    const/4 v6, 0x0

    .line 37
    .restart local v6    # "$i$f$contextual":I
    const-class v7, Landroid/util/SizeF;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->contextual(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V

    .line 29
    .end local v4    # "serializer$iv":Lkotlinx/serialization/KSerializer;
    .end local v5    # "$this$contextual$iv":Lkotlinx/serialization/modules/SerializersModuleBuilder;
    .end local v6    # "$i$f$contextual":I
    const-class v4, Landroid/util/SparseArray;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    sget-object v5, Landroidx/savedstate/serialization/SavedStateConfig_androidKt$getDefaultSerializersModuleOnPlatform$1$1;->INSTANCE:Landroidx/savedstate/serialization/SavedStateConfig_androidKt$getDefaultSerializersModuleOnPlatform$1$1;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v4, v5}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->contextual(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    .line 32
    nop

    .line 35
    .end local v2    # "$this$getDefaultSerializersModuleOnPlatform_u24lambda_u240":Lkotlinx/serialization/modules/SerializersModuleBuilder;
    .end local v3    # "$i$a$-SerializersModule-SavedStateConfig_androidKt$getDefaultSerializersModuleOnPlatform$1":I
    nop

    .line 38
    invoke-virtual {v1}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->build()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    .line 32
    .end local v0    # "$i$f$SerializersModule":I
    .end local v1    # "builder$iv":Lkotlinx/serialization/modules/SerializersModuleBuilder;
    return-object v0
.end method
