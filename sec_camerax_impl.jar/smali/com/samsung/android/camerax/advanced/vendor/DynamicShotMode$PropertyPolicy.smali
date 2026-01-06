.class public Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PropertyPolicy;
.super Ljava/lang/Object;
.source "DynamicShotMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyPolicy"
.end annotation


# static fields
.field private static final DEPENDENT_PROPERTY_RELATION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;",
            "Ljava/util/List<",
            "Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final EXCLUSIVE_PROPERTY_RELATION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;",
            "Ljava/util/List<",
            "Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1278
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;->HYBRID_CAPTURE:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;

    sget-object v1, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;->RAW_CAPTURE:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;

    .line 1279
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1278
    invoke-static {v0, v1}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PropertyPolicy;->EXCLUSIVE_PROPERTY_RELATION_MAP:Ljava/util/Map;

    .line 1281
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;->PENDING_REQUEST:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;

    sget-object v1, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;->PPP_FILE_ONLY:Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;

    .line 1282
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1281
    invoke-static {v0, v1}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PropertyPolicy;->DEPENDENT_PROPERTY_RELATION_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDependentPropertyRelationship(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1326
    .local p0, "propertyList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;

    .line 1327
    .local v1, "property":Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;
    sget-object v2, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PropertyPolicy;->DEPENDENT_PROPERTY_RELATION_MAP:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1330
    .local v2, "dependentPropertyList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;>;"
    if-eqz v2, :cond_1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1332
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v4

    .line 1333
    const-string v5, "%s must be defined together %s"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1336
    .end local v1    # "property":Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;
    .end local v2    # "dependentPropertyList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;>;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 1337
    :cond_2
    return-void
.end method

.method private static checkExclusivePropertyRelationship(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1305
    .local p0, "propertyList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;

    .line 1306
    .local v1, "property":Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;
    sget-object v2, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PropertyPolicy;->EXCLUSIVE_PROPERTY_RELATION_MAP:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1309
    .local v2, "exclusivePropertyList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;>;"
    if-eqz v2, :cond_1

    invoke-static {p0, v2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1311
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v4

    .line 1312
    const-string v5, "%s cannot be defined together %s"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    .end local v1    # "property":Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;
    .end local v2    # "exclusivePropertyList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;>;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 1316
    :cond_2
    return-void
.end method

.method public static checkPropertyRelationship(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1293
    .local p0, "propertyList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$Property;>;"
    invoke-static {p0}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PropertyPolicy;->checkExclusivePropertyRelationship(Ljava/util/List;)V

    .line 1294
    invoke-static {p0}, Lcom/samsung/android/camerax/advanced/vendor/DynamicShotMode$PropertyPolicy;->checkDependentPropertyRelationship(Ljava/util/List;)V

    .line 1295
    return-void
.end method
