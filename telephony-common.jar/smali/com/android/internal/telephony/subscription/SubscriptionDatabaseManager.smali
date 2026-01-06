.class public Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;
.super Landroid/os/Handler;
.source "SubscriptionDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEPRECATED_DATABASE_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist GROUP_SHARING_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SUBSCRIPTION_GET_METHOD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist SUBSCRIPTION_SET_BYTE_ARRAY_METHOD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;",
            "Ljava/lang/Integer;",
            "[B>;>;"
        }
    .end annotation
.end field

.field private static final blacklist SUBSCRIPTION_SET_INTEGER_METHOD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist SUBSCRIPTION_SET_STRING_METHOD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAllSubscriptionInfoInternalCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAsyncMode:Z

.field private final blacklist mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDatabaseInitialized:Z

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final blacklist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public static synthetic blacklist $r8$lambda$6SMw0FrEsILe8qSLbi1l_fv99kw(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$loadDatabaseInternal$8(Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7FgfkbBjY4dn58F7tl29YOOnPOI(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 0

    .line 2849
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9xjbwcqkE8t6EZ4Q_Vh2d8IXZLI(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$writeDatabaseAndCacheHelper$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FBzoh4DIt5N1bjAxCtEq9MMpE-4(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$updateSubscription$5(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KgSES8pz5Y6qvSemNC6VsN6y4Ug(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;ILandroid/content/ContentValues;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$updateDatabase$2(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$U2i2S50S6HdK6GMJkORMcA18h2w(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$removeSubscriptionInfo$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VVXvDmib5td0qdHpZQZEs9_nwi4(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$loadDatabaseInternal$7(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WZg_4Msglu1KTk7ajc759jSf6ZU(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;Landroid/telephony/TelephonyManager;ZLjava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$loadDatabaseInternal$9(Landroid/telephony/TelephonyManager;ZLjava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$X-XowyHCSF5CToBJ4D9PLE152mM(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$setGroupDisabled$6(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bzHRcwIsW3uZe95BwHDlHL9_gbs(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$initializeDatabase$10()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cA5JcGLcEy2fDiz3abEi_suhPmw(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$insertSubscriptionInfo$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uFmcp_ZwUqTyVq6DkcHXAvJobAM(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;IZLcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;Landroid/content/ContentValues;Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->lambda$writeDatabaseAndCacheHelper$4(IZLcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;Landroid/content/ContentValues;Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vC8vDdOWt4Wmbd-g1pWmQOyL7Ts(Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 0

    .line 2713
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getIccId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 26

    const/16 v0, 0x4a

    .line 107
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda60;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda60;-><init>()V

    const-string v3, "_id"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v3, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda118;

    invoke-direct {v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda118;-><init>()V

    const-string v4, "icc_id"

    invoke-direct {v1, v4, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda129;

    invoke-direct {v4}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda129;-><init>()V

    const-string v5, "sim_id"

    invoke-direct {v1, v5, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v5, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda140;

    invoke-direct {v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda140;-><init>()V

    const-string v6, "display_name"

    invoke-direct {v1, v6, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda151;

    invoke-direct {v6}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda151;-><init>()V

    const-string v7, "carrier_name"

    invoke-direct {v1, v7, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v7, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda162;

    invoke-direct {v7}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda162;-><init>()V

    const-string v8, "name_source"

    invoke-direct {v1, v8, v7}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x5

    aput-object v1, v0, v7

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v8, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda173;

    invoke-direct {v8}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda173;-><init>()V

    const-string v9, "color"

    invoke-direct {v1, v9, v8}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x6

    aput-object v1, v0, v8

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v9, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda184;

    invoke-direct {v9}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda184;-><init>()V

    const-string v10, "number"

    invoke-direct {v1, v10, v9}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x7

    aput-object v1, v0, v9

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v10, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda195;

    invoke-direct {v10}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda195;-><init>()V

    const-string v11, "data_roaming"

    invoke-direct {v1, v11, v10}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v10, 0x8

    aput-object v1, v0, v10

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v11, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda206;

    invoke-direct {v11}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda206;-><init>()V

    const-string v12, "mcc_string"

    invoke-direct {v1, v12, v11}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v11, 0x9

    aput-object v1, v0, v11

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v12, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda71;

    invoke-direct {v12}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda71;-><init>()V

    const-string v13, "mnc_string"

    invoke-direct {v1, v13, v12}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v12, 0xa

    aput-object v1, v0, v12

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v13, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda82;

    invoke-direct {v13}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda82;-><init>()V

    const-string v14, "ehplmns"

    invoke-direct {v1, v14, v13}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v13, 0xb

    aput-object v1, v0, v13

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v14, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda93;

    invoke-direct {v14}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda93;-><init>()V

    const-string v15, "hplmns"

    invoke-direct {v1, v15, v14}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v14, 0xc

    aput-object v1, v0, v14

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda104;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda104;-><init>()V

    move/from16 v16, v2

    const-string v2, "is_embedded"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda112;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda112;-><init>()V

    move/from16 v17, v2

    const-string v2, "card_id"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda113;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda113;-><init>()V

    move/from16 v18, v2

    const-string v2, "access_rules"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda114;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda114;-><init>()V

    move/from16 v19, v2

    const-string v2, "access_rules_from_carrier_configs"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda115;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda115;-><init>()V

    move/from16 v20, v2

    const-string v2, "is_removable"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda116;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda116;-><init>()V

    move/from16 v21, v2

    const-string v2, "enable_cmas_extreme_threat_alerts"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda117;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda117;-><init>()V

    move/from16 v22, v2

    const-string v2, "enable_cmas_severe_threat_alerts"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda119;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda119;-><init>()V

    move/from16 v23, v2

    const-string v2, "enable_cmas_amber_alerts"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda120;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda120;-><init>()V

    move/from16 v24, v2

    const-string v2, "enable_emergency_alerts"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v15, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda121;

    invoke-direct {v15}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda121;-><init>()V

    move/from16 v25, v2

    const-string v2, "alert_sound_duration"

    invoke-direct {v1, v2, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda122;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda122;-><init>()V

    const-string v15, "alert_reminder_interval"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda123;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda123;-><init>()V

    const-string v15, "enable_alert_vibrate"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda124;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda124;-><init>()V

    const-string v15, "enable_alert_speech"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda125;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda125;-><init>()V

    const-string v15, "enable_etws_test_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda126;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda126;-><init>()V

    const-string v15, "enable_channel_50_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda127;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda127;-><init>()V

    const-string v15, "enable_cmas_test_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda128;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda128;-><init>()V

    const-string v15, "show_cmas_opt_out_dialog"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda130;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda130;-><init>()V

    const-string v15, "volte_vt_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda131;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda131;-><init>()V

    const-string v15, "vt_ims_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda132;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda132;-><init>()V

    const-string v15, "wfc_ims_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda133;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda133;-><init>()V

    const-string v15, "wfc_ims_mode"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda134;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda134;-><init>()V

    const-string v15, "wfc_ims_roaming_mode"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda135;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda135;-><init>()V

    const-string v15, "wfc_ims_roaming_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda136;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda136;-><init>()V

    const-string v15, "is_opportunistic"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda137;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda137;-><init>()V

    const-string v15, "group_uuid"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda138;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda138;-><init>()V

    const-string v15, "iso_country_code"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda139;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda139;-><init>()V

    const-string v15, "carrier_id"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda141;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda141;-><init>()V

    const-string v15, "profile_class"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda142;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda142;-><init>()V

    const-string v15, "subscription_type"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda143;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda143;-><init>()V

    const-string v15, "group_owner"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda144;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda144;-><init>()V

    const-string v15, "enabled_mobile_data_policies"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda145;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda145;-><init>()V

    const-string v15, "imsi"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda146;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda146;-><init>()V

    const-string v15, "uicc_applications_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda147;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda147;-><init>()V

    const-string v15, "ims_rcs_uce_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda148;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda148;-><init>()V

    const-string v15, "cross_sim_calling_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda149;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda149;-><init>()V

    const-string v15, "rcs_config"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda150;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda150;-><init>()V

    const-string v15, "allowed_network_types_for_reasons"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda152;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda152;-><init>()V

    const-string v15, "d2d_sharing_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda153;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda153;-><init>()V

    const-string v15, "voims_opt_in_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda154;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda154;-><init>()V

    const-string v15, "d2d_sharing_contacts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda155;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda155;-><init>()V

    const-string v15, "nr_advanced_calling_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda156;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda156;-><init>()V

    const-string v15, "phone_number_source_carrier"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda157;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda157;-><init>()V

    const-string v15, "phone_number_source_ims"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda158;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda158;-><init>()V

    const-string v15, "port_index"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda159;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda159;-><init>()V

    const-string v15, "usage_setting"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda160;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda160;-><init>()V

    const-string v15, "tp_message_ref"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda161;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda161;-><init>()V

    const-string v15, "user_handle"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda163;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda163;-><init>()V

    const-string v15, "satellite_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda164;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda164;-><init>()V

    const-string v15, "satellite_attach_enabled_for_carrier"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda165;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda165;-><init>()V

    const-string v15, "is_only_ntn"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda166;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda166;-><init>()V

    const-string v15, "service_capabilities"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda167;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda167;-><init>()V

    const-string v15, "transfer_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda168;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda168;-><init>()V

    const-string v15, "satellite_entitlement_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda169;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda169;-><init>()V

    const-string v15, "satellite_entitlement_plmns"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda170;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda170;-><init>()V

    const-string v15, "satellite_esos_supported"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda171;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda171;-><init>()V

    const-string v15, "is_satellite_provisioned_for_non_ip_datagram"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda172;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda172;-><init>()V

    const-string v15, "satellite_entitlement_barred_plmns"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda174;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda174;-><init>()V

    const-string v15, "satellite_entitlement_data_plan_plmns"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x46

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda175;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda175;-><init>()V

    const-string v15, "satellite_entitlement_service_type_map"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x47

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda176;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda176;-><init>()V

    const-string v15, "satellite_entitlement_data_service_policy"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x48

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda177;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda177;-><init>()V

    const-string v15, "satellite_entitlement_voice_service_policy"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x49

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_GET_METHOD_MAP:Ljava/util/Map;

    const/16 v0, 0x2e

    .line 337
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda178;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda178;-><init>()V

    const-string v15, "sim_id"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v16

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda179;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda179;-><init>()V

    const-string v15, "name_source"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda180;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda180;-><init>()V

    const-string v15, "color"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda181;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda181;-><init>()V

    const-string v15, "data_roaming"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda182;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda182;-><init>()V

    const-string v15, "is_embedded"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda183;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda183;-><init>()V

    const-string v15, "is_removable"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v7

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda185;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda185;-><init>()V

    const-string v15, "enable_cmas_extreme_threat_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v8

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda186;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda186;-><init>()V

    const-string v15, "enable_cmas_severe_threat_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v9

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda187;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda187;-><init>()V

    const-string v15, "enable_cmas_amber_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v10

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda188;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda188;-><init>()V

    const-string v15, "enable_emergency_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v11

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda189;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda189;-><init>()V

    const-string v15, "alert_sound_duration"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v12

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda190;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda190;-><init>()V

    const-string v15, "alert_reminder_interval"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v13

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda191;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda191;-><init>()V

    const-string v15, "enable_alert_vibrate"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v14

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda192;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda192;-><init>()V

    const-string v15, "enable_alert_speech"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v17

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda193;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda193;-><init>()V

    const-string v15, "enable_etws_test_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v18

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda194;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda194;-><init>()V

    const-string v15, "enable_channel_50_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v19

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda196;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda196;-><init>()V

    const-string v15, "enable_cmas_test_alerts"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v20

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda197;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda197;-><init>()V

    const-string v15, "show_cmas_opt_out_dialog"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v21

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda198;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda198;-><init>()V

    const-string v15, "volte_vt_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v22

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda199;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda199;-><init>()V

    const-string v15, "vt_ims_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v23

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda200;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda200;-><init>()V

    const-string v15, "wfc_ims_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v24

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda201;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda201;-><init>()V

    const-string v15, "wfc_ims_mode"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v25

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda202;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda202;-><init>()V

    const-string v15, "wfc_ims_roaming_mode"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda203;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda203;-><init>()V

    const-string v15, "wfc_ims_roaming_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda204;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda204;-><init>()V

    const-string v15, "is_opportunistic"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda205;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda205;-><init>()V

    const-string v15, "carrier_id"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda61;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda61;-><init>()V

    const-string v15, "profile_class"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda62;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda62;-><init>()V

    const-string v15, "subscription_type"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda63;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda63;-><init>()V

    const-string v15, "uicc_applications_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda64;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda64;-><init>()V

    const-string v15, "ims_rcs_uce_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda65;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda65;-><init>()V

    const-string v15, "cross_sim_calling_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda66;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda66;-><init>()V

    const-string v15, "d2d_sharing_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda67;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda67;-><init>()V

    const-string v15, "voims_opt_in_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda68;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda68;-><init>()V

    const-string v15, "nr_advanced_calling_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda69;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda69;-><init>()V

    const-string v15, "port_index"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda70;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda70;-><init>()V

    const-string v15, "usage_setting"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda72;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda72;-><init>()V

    const-string v15, "tp_message_ref"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda73;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda73;-><init>()V

    const-string v15, "user_handle"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda74;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda74;-><init>()V

    const-string v15, "satellite_enabled"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda75;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda75;-><init>()V

    const-string v15, "satellite_attach_enabled_for_carrier"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda76;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda76;-><init>()V

    const-string v15, "is_only_ntn"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda77;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda77;-><init>()V

    const-string v15, "service_capabilities"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda78;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda78;-><init>()V

    const-string v15, "transfer_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda79;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda79;-><init>()V

    const-string v15, "satellite_entitlement_status"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda80;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda80;-><init>()V

    const-string v15, "satellite_esos_supported"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda81;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda81;-><init>()V

    const-string v15, "is_satellite_provisioned_for_non_ip_datagram"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_SET_INTEGER_METHOD_MAP:Ljava/util/Map;

    const/16 v0, 0x18

    .line 483
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda83;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda83;-><init>()V

    const-string v15, "icc_id"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v16

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda84;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda84;-><init>()V

    const-string v15, "display_name"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda85;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda85;-><init>()V

    const-string v15, "carrier_name"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda86;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda86;-><init>()V

    const-string v15, "number"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda87;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda87;-><init>()V

    const-string v15, "mcc_string"

    invoke-direct {v1, v15, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda88;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda88;-><init>()V

    const-string v6, "mnc_string"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v7

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda89;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda89;-><init>()V

    const-string v6, "ehplmns"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v8

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda90;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda90;-><init>()V

    const-string v6, "hplmns"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v9

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda91;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda91;-><init>()V

    const-string v6, "card_id"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v10

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda92;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda92;-><init>()V

    const-string v6, "group_uuid"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v11

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda94;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda94;-><init>()V

    const-string v6, "iso_country_code"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v12

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda95;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda95;-><init>()V

    const-string v6, "group_owner"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v13

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda96;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda96;-><init>()V

    const-string v6, "enabled_mobile_data_policies"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v14

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda97;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda97;-><init>()V

    const-string v6, "imsi"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v17

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda98;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda98;-><init>()V

    const-string v6, "allowed_network_types_for_reasons"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v18

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda99;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda99;-><init>()V

    const-string v6, "d2d_sharing_contacts"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v19

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda100;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda100;-><init>()V

    const-string v6, "phone_number_source_carrier"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v20

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda101;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda101;-><init>()V

    const-string v6, "phone_number_source_ims"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v21

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda102;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda102;-><init>()V

    const-string v6, "satellite_entitlement_plmns"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v22

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda103;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda103;-><init>()V

    const-string v6, "satellite_entitlement_barred_plmns"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v23

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda105;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda105;-><init>()V

    const-string v6, "satellite_entitlement_data_plan_plmns"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v24

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda106;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda106;-><init>()V

    const-string v6, "satellite_entitlement_service_type_map"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v25

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda107;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda107;-><init>()V

    const-string v6, "satellite_entitlement_data_service_policy"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda108;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda108;-><init>()V

    const-string v6, "satellite_entitlement_voice_service_policy"

    invoke-direct {v1, v6, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_SET_STRING_METHOD_MAP:Ljava/util/Map;

    .line 563
    new-array v0, v5, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda109;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda109;-><init>()V

    const-string v5, "access_rules"

    invoke-direct {v1, v5, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v16

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda110;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda110;-><init>()V

    const-string v5, "access_rules_from_carrier_configs"

    invoke-direct {v1, v5, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda111;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda111;-><init>()V

    const-string v3, "rcs_config"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_SET_BYTE_ARRAY_METHOD_MAP:Ljava/util/Map;

    .line 582
    const-string v21, "satellite_enabled"

    const-string v22, "satellite_attach_enabled_for_carrier"

    const-string v1, "display_name"

    const-string v2, "name_source"

    const-string v3, "color"

    const-string v4, "data_roaming"

    const-string v5, "volte_vt_enabled"

    const-string v6, "vt_ims_enabled"

    const-string v7, "wfc_ims_enabled"

    const-string v8, "wfc_ims_mode"

    const-string v9, "wfc_ims_roaming_mode"

    const-string v10, "wfc_ims_roaming_enabled"

    const-string v11, "enabled_mobile_data_policies"

    const-string v12, "uicc_applications_enabled"

    const-string v13, "ims_rcs_uce_enabled"

    const-string v14, "cross_sim_calling_enabled"

    const-string v15, "rcs_config"

    const-string v16, "d2d_sharing_status"

    const-string v17, "voims_opt_in_status"

    const-string v18, "d2d_sharing_contacts"

    const-string v19, "nr_advanced_calling_enabled"

    const-string v20, "user_handle"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->GROUP_SHARING_COLUMNS:Ljava/util/Set;

    .line 611
    const-string v6, "data_enabled_override_rules"

    const-string v7, "allowed_network_types"

    const-string v1, "display_number_format"

    const-string v2, "mcc"

    const-string v3, "mnc"

    const-string v4, "sim_provisioning_status"

    const-string v5, "is_metered"

    invoke-static/range {v1 .. v7}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->DEPRECATED_DATABASE_COLUMNS:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;)V
    .locals 1

    .line 725
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 641
    new-instance p2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 648
    new-instance p2, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 659
    new-instance p2, Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    const/4 p2, 0x0

    .line 665
    iput-boolean p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mDatabaseInitialized:Z

    .line 726
    const-string p2, "Created SubscriptionDatabaseManager."

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->log(Ljava/lang/String;)V

    .line 727
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mContext:Landroid/content/Context;

    .line 728
    iput-object p4, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    .line 729
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 730
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110267

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAsyncMode:Z

    .line 732
    iput-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 733
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->initializeDatabase()V

    return-void
.end method

.method private blacklist createDeltaContentValues(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/content/ContentValues;
    .locals 4

    .line 847
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 849
    invoke-static {}, Landroid/provider/Telephony$SimInfo;->getAllColumns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 850
    sget-object v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->DEPRECATED_DATABASE_COLUMNS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 852
    :cond_1
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 853
    :cond_2
    invoke-static {p2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoFieldByColumnName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_3

    .line 857
    invoke-static {p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoFieldByColumnName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 861
    :goto_1
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 862
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method private blacklist createSubscriptionInfoFromCursor(Landroid/database/Cursor;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
    .locals 3

    .line 2462
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;-><init>()V

    .line 2463
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2465
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "icc_id"

    .line 2466
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "sim_id"

    .line 2468
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSimSlotIndex(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "display_name"

    .line 2470
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDisplayName(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "carrier_name"

    .line 2472
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCarrierName(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "name_source"

    .line 2474
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDisplayNameSource(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "color"

    .line 2476
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setIconTint(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "number"

    .line 2478
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setNumber(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "data_roaming"

    .line 2480
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDataRoaming(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "mcc_string"

    .line 2482
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setMcc(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "mnc_string"

    .line 2484
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setMnc(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "ehplmns"

    .line 2486
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setEhplmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "hplmns"

    .line 2488
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setHplmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    const-string v2, "is_embedded"

    .line 2490
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setEmbedded(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2493
    const-string v1, "card_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2495
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCardString(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2497
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result p0

    .line 2499
    const-string v1, "access_rules"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2501
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setNativeAccessRules([B)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2504
    :cond_0
    const-string v1, "access_rules_from_carrier_configs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2507
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCarrierConfigAccessRules([B)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2510
    :cond_1
    const-string v1, "rcs_config"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2512
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setRcsConfig([B)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2515
    :cond_2
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCardId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "is_removable"

    .line 2516
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setRemovableEmbedded(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_cmas_extreme_threat_alerts"

    .line 2519
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2518
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastExtremeThreatAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_cmas_severe_threat_alerts"

    .line 2521
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2520
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastSevereThreatAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_cmas_amber_alerts"

    .line 2522
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastAmberAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_emergency_alerts"

    .line 2524
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastEmergencyAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "alert_sound_duration"

    .line 2526
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastAlertSoundDuration(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "alert_reminder_interval"

    .line 2528
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastAlertReminderInterval(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_alert_vibrate"

    .line 2530
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastAlertVibrationEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_alert_speech"

    .line 2532
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastAlertSpeechEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_etws_test_alerts"

    .line 2534
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastEtwsTestAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_channel_50_alerts"

    .line 2536
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastAreaInfoMessageEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enable_cmas_test_alerts"

    .line 2538
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastTestAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "show_cmas_opt_out_dialog"

    .line 2540
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCellBroadcastOptOutDialogEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "volte_vt_enabled"

    .line 2542
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setEnhanced4GModeEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "vt_ims_enabled"

    .line 2544
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setVideoTelephonyEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "wfc_ims_enabled"

    .line 2546
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setWifiCallingEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "wfc_ims_mode"

    .line 2548
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setWifiCallingMode(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "wfc_ims_roaming_mode"

    .line 2550
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setWifiCallingModeForRoaming(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "wfc_ims_roaming_enabled"

    .line 2552
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setWifiCallingEnabledForRoaming(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "is_opportunistic"

    .line 2554
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setOpportunistic(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "group_uuid"

    .line 2556
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setGroupUuid(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "iso_country_code"

    .line 2558
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCountryIso(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "carrier_id"

    .line 2560
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCarrierId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "profile_class"

    .line 2562
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setProfileClass(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "subscription_type"

    .line 2564
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setType(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "group_owner"

    .line 2566
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setGroupOwner(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "enabled_mobile_data_policies"

    .line 2569
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2568
    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setEnabledMobileDataPolicies(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "imsi"

    .line 2571
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setImsi(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "uicc_applications_enabled"

    .line 2573
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setUiccApplicationsEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "ims_rcs_uce_enabled"

    .line 2575
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setRcsUceEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "cross_sim_calling_enabled"

    .line 2577
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCrossSimCallingEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "allowed_network_types_for_reasons"

    .line 2580
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2579
    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setAllowedNetworkTypesForReasons(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "d2d_sharing_status"

    .line 2583
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2582
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDeviceToDeviceStatusSharingPreference(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "voims_opt_in_status"

    .line 2585
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setVoImsOptInEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "d2d_sharing_contacts"

    .line 2588
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2587
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "nr_advanced_calling_enabled"

    .line 2590
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setNrAdvancedCallingEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "phone_number_source_carrier"

    .line 2593
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2592
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setNumberFromCarrier(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "phone_number_source_ims"

    .line 2596
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2595
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setNumberFromIms(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "port_index"

    .line 2598
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setPortIndex(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "usage_setting"

    .line 2600
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setUsageSetting(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "tp_message_ref"

    .line 2602
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setLastUsedTPMessageReference(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "user_handle"

    .line 2604
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setUserId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_enabled"

    .line 2606
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_attach_enabled_for_carrier"

    .line 2609
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2608
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteAttachEnabledForCarrier(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "service_capabilities"

    .line 2612
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2611
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setServiceCapabilities(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_entitlement_status"

    .line 2615
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2614
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteEntitlementStatus(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_entitlement_plmns"

    .line 2618
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2617
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteEntitlementPlmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "is_satellite_provisioned_for_non_ip_datagram"

    .line 2621
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2620
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setIsSatelliteProvisionedForNonIpDatagram(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_entitlement_barred_plmns"

    .line 2624
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2623
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteEntitlementBarredPlmnsList(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_entitlement_data_plan_plmns"

    .line 2627
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2626
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteEntitlementDataPlanForPlmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_entitlement_service_type_map"

    .line 2630
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2629
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteEntitlementPlmnServiceTypes(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_entitlement_data_service_policy"

    .line 2633
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2632
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatellitePlmnsDataServicePolicy(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    const-string v1, "satellite_entitlement_voice_service_policy"

    .line 2636
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2635
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatellitePlmnsVoiceServicePolicy(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2638
    const-string p0, "is_only_ntn"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setOnlyNonTerrestrialNetwork(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2641
    const-string p0, "transfer_status"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setTransferStatus(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2645
    const-string p0, "satellite_esos_supported"

    .line 2646
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 2645
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteESOSSupported(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 2648
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSubscriptionInfoFieldByColumnName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 754
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_GET_METHOD_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 757
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid column name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist initializeDatabase()V
    .locals 2

    .line 2434
    iget-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAsyncMode:Z

    if-eqz v0, :cond_0

    .line 2436
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2445
    :cond_0
    monitor-enter p0

    .line 2446
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->loadDatabaseInternal()V

    const/4 v0, 0x1

    .line 2447
    iput-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mDatabaseInitialized:Z

    .line 2448
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 2449
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist insertNewRecordIntoDatabaseSync(Landroid/content/ContentValues;)I
    .locals 4

    .line 878
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 881
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 882
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertNewRecordIntoDatabaseSync: contentValues="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logv(Ljava/lang/String;)V

    .line 884
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertNewRecordIntoDatabaseSync: Successfully added subscription. subId="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 884
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logl(Ljava/lang/String;)V

    return v1

    .line 890
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertNewRecordIntoDatabaseSync: Failed to insert subscription into database. contentValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logel(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private synthetic blacklist lambda$initializeDatabase$10()V
    .locals 2

    .line 2437
    monitor-enter p0

    .line 2438
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->loadDatabaseInternal()V

    const/4 v0, 0x1

    .line 2439
    iput-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mDatabaseInitialized:Z

    .line 2440
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 2441
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic blacklist lambda$insertSubscriptionInfo$0(I)V
    .locals 0

    .line 941
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->onSubscriptionChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$loadDatabaseInternal$7(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 0

    .line 2399
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    .line 2400
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p1

    .line 2399
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->onSubscriptionChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$loadDatabaseInternal$8(Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 1

    .line 2412
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$loadDatabaseInternal$9(Landroid/telephony/TelephonyManager;ZLjava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 0

    .line 2418
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    invoke-virtual {p4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isEmbedded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 2419
    :cond_0
    invoke-virtual {p4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->areUiccApplicationsEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2420
    invoke-virtual {p4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setUiccApplicationsEnabled(II)V

    :cond_1
    return-void
.end method

.method private synthetic blacklist lambda$removeSubscriptionInfo$1(I)V
    .locals 0

    .line 970
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->onSubscriptionChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$setGroupDisabled$6(I)V
    .locals 0

    .line 2163
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->onSubscriptionChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateDatabase$2(ILandroid/content/ContentValues;)V
    .locals 3

    .line 998
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 999
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 998
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDatabase: async updated subscription in the database. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", contentValues= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {p2}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1000
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logv(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1003
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateDatabase: Can\'t update database "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logel(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSubscription$5(I)V
    .locals 0

    .line 1115
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->onSubscriptionChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$writeDatabaseAndCacheHelper$3(I)V
    .locals 0

    .line 1081
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->onSubscriptionChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$writeDatabaseAndCacheHelper$4(IZLcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;Landroid/content/ContentValues;Ljava/lang/Integer;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 1

    .line 1058
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1059
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p9}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1061
    :cond_0
    invoke-static {p9, p4}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoFieldByColumnName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1063
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "writeDatabaseAndCacheHelper: subId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",columnName="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", newValue="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logv(Ljava/lang/String;)V

    .line 1068
    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    invoke-direct {p2, p9}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    .line 1073
    invoke-interface {p6, p2, p5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1076
    invoke-virtual {p7, p4, p5}, Landroid/content/ContentValues;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1077
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p0, p3, p7}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->updateDatabase(ILandroid/content/ContentValues;)I

    move-result p3

    if-lez p3, :cond_1

    .line 1079
    iget-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p2

    invoke-interface {p3, p8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    new-instance p3, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda234;

    invoke-direct {p3, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda234;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private blacklist loadDatabaseInternal()V
    .locals 7

    .line 2386
    const-string v0, "loadDatabaseInternal"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logl(Ljava/lang/String;)V

    .line 2387
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2389
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2391
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 2394
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2395
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->createSubscriptionInfoFromCursor(Landroid/database/Cursor;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v3

    .line 2396
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    .line 2398
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2397
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2399
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    new-instance v4, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda43;

    invoke-direct {v4, p0, v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda43;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 2406
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2407
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " records from the subscription database."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logl(Ljava/lang/String;)V

    .line 2411
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda44;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2415
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2416
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.telephony.euicc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 2417
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    new-instance v4, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda45;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda45;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;Landroid/telephony/TelephonyManager;Z)V

    invoke-interface {v3, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2425
    :try_start_2
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 2427
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 2425
    :goto_1
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2426
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v1, :cond_4

    .line 2387
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 2792
    const-string p0, "SDMGR"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 2801
    const-string p0, "SDMGR"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logel(Ljava/lang/String;)V
    .locals 0

    .line 2819
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->loge(Ljava/lang/String;)V

    .line 2820
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .locals 0

    .line 2829
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->log(Ljava/lang/String;)V

    .line 2830
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method private blacklist updateDatabase(ILandroid/content/ContentValues;)I
    .locals 3

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDatabase: prepare to update sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logv(Ljava/lang/String;)V

    .line 985
    monitor-enter p0

    .line 986
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mDatabaseInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 987
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateDatabase: Database has not been initialized. Can\'t update database at this point. contentValues="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logel(Ljava/lang/String;)V

    .line 989
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 991
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    iget-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAsyncMode:Z

    if-eqz v0, :cond_1

    .line 996
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda233;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda233;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;ILandroid/content/ContentValues;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    .line 1009
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDatabase: sync updated subscription in the database. subId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", contentValues= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {p2}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1009
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logv(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 1012
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1011
    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 1014
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateDatabase: Can\'t update database "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logel(Ljava/lang/String;)V

    return v1

    .line 991
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private blacklist writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;",
            "TT;",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;",
            ">;)V"
        }
    .end annotation

    .line 1040
    const-string v0, ", columnName="

    const-string v1, "Subscription doesn\'t exist. subId="

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1043
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1045
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    .line 1046
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    if-eqz v6, :cond_0

    .line 1055
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->GROUP_SHARING_COLUMNS:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda232;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p0

    move v4, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    :try_start_1
    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda232;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;IZLcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;Landroid/content/ContentValues;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1087
    iget-object p0, v3, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, p0

    goto :goto_0

    :cond_0
    move-object v3, p0

    move v4, p1

    move-object v7, p2

    .line 1048
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logel(Ljava/lang/String;)V

    .line 1049
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1087
    :goto_1
    iget-object p1, v3, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1088
    throw p0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 2842
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2845
    const-string v1, "All subscriptions:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2846
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2847
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2849
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda207;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda207;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2851
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2853
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2854
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 2855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAsyncMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAsyncMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2856
    monitor-enter p0

    .line 2857
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDatabaseInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mDatabaseInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2858
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReadWriteLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2860
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 2861
    const-string v1, "Local log:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2862
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2863
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2864
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2865
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void

    :catchall_0
    move-exception p1

    .line 2858
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 2851
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2852
    throw p1
.end method

.method public blacklist getAllSubscriptions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;",
            ">;"
        }
    .end annotation

    .line 2694
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2696
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2698
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2699
    throw v0
.end method

.method public blacklist getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
    .locals 1

    .line 2681
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2683
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2685
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2686
    throw p1
.end method

.method public blacklist getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
    .locals 2

    .line 2710
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2712
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;)V

    .line 2713
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 2714
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 2715
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2717
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2718
    throw p1
.end method

.method public blacklist getSubscriptionProperty(ILjava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 774
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 780
    invoke-static {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoFieldByColumnName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 776
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubscriptionProperty: Invalid subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", columnName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist insertSubscriptionInfo(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I
    .locals 4

    .line 906
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 913
    monitor-enter p0

    .line 914
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mDatabaseInitialized:Z

    if-eqz v0, :cond_1

    .line 919
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 928
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->createDeltaContentValues(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->insertNewRecordIntoDatabaseSync(Landroid/content/ContentValues;)I

    move-result v0

    if-lez v0, :cond_0

    .line 930
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    .line 932
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    .line 930
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 934
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertSubscriptionInfo: Failed to insert a new subscription. subInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logel(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 938
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 941
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return v0

    .line 938
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 939
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 915
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Database has not been initialized. Can\'t insert new record at this point."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 919
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 909
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertSubscriptionInfo: Not a new subscription to insert. subInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist reloadDatabaseSync()V
    .locals 1

    .line 2377
    const-string v0, "reloadDatabaseSync"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logl(Ljava/lang/String;)V

    .line 2379
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->loadDatabaseInternal()V

    return-void
.end method

.method public blacklist removeSubscriptionInfo(I)V
    .locals 4

    .line 953
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 959
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    .line 961
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 959
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 964
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove subscription with subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->logel(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda227;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda227;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void

    .line 967
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 968
    throw p1

    .line 954
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist serializeMapListToJsonString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2768
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_3

    .line 2769
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 2773
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2774
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 2775
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2776
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 2778
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2781
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serializeMapListToCV JSON error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->loge(Ljava/lang/String;)V

    .line 2783
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2770
    :cond_3
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist serializeMapToJsonString(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2747
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_2

    .line 2748
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2752
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2753
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serializeMapToCV JSON error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->loge(Ljava/lang/String;)V

    .line 2758
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2749
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setAllowedNetworkTypesForReasons(ILjava/lang/String;)V
    .locals 2

    .line 1940
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "allowed_network_types_for_reasons"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCardId(II)V
    .locals 3

    .line 1380
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1382
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    if-eqz v0, :cond_0

    .line 1387
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    .line 1389
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCardId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p2

    .line 1387
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1384
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCardId: Subscription doesn\'t exist. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1391
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1392
    throw p1
.end method

.method public blacklist setCardString(ILjava/lang/String;)V
    .locals 2

    .line 1359
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setCardId(II)V

    .line 1362
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "card_id"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCarrierConfigAccessRules(I[B)V
    .locals 2

    .line 1420
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda212;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda212;-><init>()V

    const-string v1, "access_rules_from_carrier_configs"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCarrierConfigAccessRules(I[Landroid/telephony/UiccAccessRule;)V
    .locals 2

    .line 1437
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    invoke-static {p2}, Landroid/telephony/UiccAccessRule;->encodeRules([Landroid/telephony/UiccAccessRule;)[B

    move-result-object p2

    .line 1439
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda212;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda212;-><init>()V

    const-string v1, "access_rules_from_carrier_configs"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCarrierId(II)V
    .locals 2

    .line 1784
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "carrier_id"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCarrierName(ILjava/lang/String;)V
    .locals 2

    .line 1175
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda217;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda217;-><init>()V

    const-string v1, "carrier_name"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastAlertReminderInterval(II)V
    .locals 2

    .line 1545
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda23;-><init>()V

    .line 1544
    const-string v1, "alert_reminder_interval"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastAlertSoundDuration(II)V
    .locals 2

    .line 1531
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda16;-><init>()V

    .line 1530
    const-string v1, "alert_sound_duration"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastAlertSpeechEnabled(II)V
    .locals 2

    .line 1573
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda213;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda213;-><init>()V

    const-string v1, "enable_alert_speech"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastAlertVibrationEnabled(II)V
    .locals 2

    .line 1559
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda215;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda215;-><init>()V

    const-string v1, "enable_alert_vibrate"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastAmberAlertEnabled(II)V
    .locals 2

    .line 1501
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "enable_cmas_amber_alerts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastAreaInfoMessageEnabled(II)V
    .locals 2

    .line 1603
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda36;-><init>()V

    .line 1602
    const-string v1, "enable_channel_50_alerts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastEmergencyAlertEnabled(II)V
    .locals 2

    .line 1517
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda34;-><init>()V

    .line 1516
    const-string v1, "enable_emergency_alerts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastEtwsTestAlertEnabled(II)V
    .locals 2

    .line 1588
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda57;-><init>()V

    .line 1587
    const-string v1, "enable_etws_test_alerts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastExtremeThreatAlertEnabled(II)V
    .locals 2

    .line 1471
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda2;-><init>()V

    .line 1470
    const-string v1, "enable_cmas_extreme_threat_alerts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastOptOutDialogEnabled(II)V
    .locals 2

    .line 1629
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "show_cmas_opt_out_dialog"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastSevereThreatAlertEnabled(II)V
    .locals 2

    .line 1487
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda18;-><init>()V

    .line 1486
    const-string v1, "enable_cmas_severe_threat_alerts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCellBroadcastTestAlertEnabled(II)V
    .locals 2

    .line 1616
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "enable_cmas_test_alerts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCountryIso(ILjava/lang/String;)V
    .locals 2

    .line 1768
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "iso_country_code"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setCrossSimCallingEnabled(II)V
    .locals 2

    .line 1910
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda51;-><init>()V

    .line 1909
    const-string v1, "cross_sim_calling_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setDataRoaming(II)V
    .locals 2

    .line 1233
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda216;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda216;-><init>()V

    const-string v1, "data_roaming"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setDeviceToDeviceStatusSharingContacts(ILjava/lang/String;)V
    .locals 2

    .line 1985
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1986
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "d2d_sharing_contacts"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setDeviceToDeviceStatusSharingPreference(II)V
    .locals 2

    .line 1957
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda10;-><init>()V

    .line 1956
    const-string v1, "d2d_sharing_status"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setDisplayName(ILjava/lang/String;)V
    .locals 2

    .line 1160
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "display_name"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setDisplayNameSource(II)V
    .locals 2

    .line 1191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "name_source"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setEhplmns(ILjava/lang/String;)V
    .locals 2

    .line 1289
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda210;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda210;-><init>()V

    const-string v1, "ehplmns"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setEhplmns(I[Ljava/lang/String;)V
    .locals 1

    .line 1274
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda15;-><init>()V

    .line 1276
    invoke-static {v0}, Ljava/util/function/Predicate;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    const-string v0, ","

    .line 1277
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1275
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setEhplmns(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setEmbedded(II)V
    .locals 2

    .line 1332
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "is_embedded"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setEmbedded(IZ)V
    .locals 0

    .line 1345
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setEmbedded(II)V

    return-void
.end method

.method public blacklist setEnabledMobileDataPolicies(ILjava/lang/String;)V
    .locals 2

    .line 1839
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "enabled_mobile_data_policies"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setEnhanced4GModeEnabled(II)V
    .locals 2

    .line 1643
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda29;-><init>()V

    .line 1642
    const-string v1, "volte_vt_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setGroupDisabled(IZ)V
    .locals 5

    .line 2146
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2148
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    if-eqz v0, :cond_2

    .line 2153
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isGroupDisabled()Z

    move-result v1

    if-eq v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2154
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    .line 2156
    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setGroupDisabled(Z)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p2

    .line 2154
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2158
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v1, :cond_1

    .line 2162
    const-string p2, "setGroupDisabled value changed, firing the callback"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->log(Ljava/lang/String;)V

    .line 2163
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda55;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda55;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2150
    :cond_2
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGroupDisabled: Subscription doesn\'t exist. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2158
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2159
    throw p1
.end method

.method public blacklist setGroupOwner(ILjava/lang/String;)V
    .locals 2

    .line 1825
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda222;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda222;-><init>()V

    const-string v1, "group_owner"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setGroupUuid(ILjava/lang/String;)V
    .locals 2

    .line 1754
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "group_uuid"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setHplmns(ILjava/lang/String;)V
    .locals 2

    .line 1318
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "hplmns"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setHplmns(I[Ljava/lang/String;)V
    .locals 1

    .line 1303
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda15;-><init>()V

    .line 1305
    invoke-static {v0}, Ljava/util/function/Predicate;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    const-string v0, ","

    .line 1306
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1304
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setHplmns(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setIccId(ILjava/lang/String;)V
    .locals 2

    .line 1131
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda229;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda229;-><init>()V

    const-string v1, "icc_id"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setIconTint(II)V
    .locals 2

    .line 1204
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "color"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setImsi(ILjava/lang/String;)V
    .locals 2

    .line 1854
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda226;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda226;-><init>()V

    const-string v1, "imsi"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setIsSatelliteProvisionedForNonIpDatagram(II)V
    .locals 2

    .line 2292
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda1;-><init>()V

    .line 2290
    const-string v1, "is_satellite_provisioned_for_non_ip_datagram"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setLastUsedTPMessageReference(II)V
    .locals 2

    .line 2069
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda49;-><init>()V

    .line 2068
    const-string v1, "tp_message_ref"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setMcc(ILjava/lang/String;)V
    .locals 2

    .line 1246
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "mcc_string"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setMnc(ILjava/lang/String;)V
    .locals 2

    .line 1260
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda228;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda228;-><init>()V

    const-string v1, "mnc_string"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setNativeAccessRules(I[B)V
    .locals 2

    .line 1405
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda225;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda225;-><init>()V

    const-string v1, "access_rules"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setNrAdvancedCallingEnabled(II)V
    .locals 2

    .line 2001
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda8;-><init>()V

    .line 2000
    const-string v1, "nr_advanced_calling_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setNtn(II)V
    .locals 2

    .line 2127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "is_only_ntn"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setNumber(ILjava/lang/String;)V
    .locals 2

    .line 1217
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "number"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setNumberFromCarrier(ILjava/lang/String;)V
    .locals 2

    .line 2014
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda208;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda208;-><init>()V

    const-string v1, "phone_number_source_carrier"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setNumberFromIms(ILjava/lang/String;)V
    .locals 2

    .line 2028
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "phone_number_source_ims"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setOpportunistic(II)V
    .locals 2

    .line 1739
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "is_opportunistic"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setOpportunistic(IZ)V
    .locals 0

    .line 1727
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setOpportunistic(II)V

    return-void
.end method

.method public blacklist setPortIndex(II)V
    .locals 2

    .line 2042
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda230;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda230;-><init>()V

    const-string v1, "port_index"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setProfileClass(II)V
    .locals 2

    .line 1799
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda221;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda221;-><init>()V

    const-string v1, "profile_class"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setRcsConfig(I[B)V
    .locals 2

    .line 1923
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda223;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda223;-><init>()V

    const-string v1, "rcs_config"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setRcsUceEnabled(II)V
    .locals 2

    .line 1895
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "ims_rcs_uce_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setRemovableEmbedded(II)V
    .locals 2

    .line 1455
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda209;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda209;-><init>()V

    const-string v1, "is_removable"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteAttachEnabledForCarrier(II)V
    .locals 2

    .line 2113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda220;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda220;-><init>()V

    .line 2111
    const-string v1, "satellite_attach_enabled_for_carrier"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteESOSSupported(II)V
    .locals 2

    .line 2274
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda3;-><init>()V

    .line 2273
    const-string v1, "satellite_esos_supported"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEnabled(II)V
    .locals 2

    .line 2096
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda20;-><init>()V

    .line 2095
    const-string v1, "satellite_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementBarredPlmns(ILjava/lang/String;)V
    .locals 2

    .line 2305
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda211;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda211;-><init>()V

    const-string v1, "satellite_entitlement_barred_plmns"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementDataPlanForPlmns(ILjava/lang/String;)V
    .locals 2

    .line 2320
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "satellite_entitlement_data_plan_plmns"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementInfo(ILjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2239
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    .line 2240
    const-string v0, ","

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 2239
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2241
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementPlmns(ILjava/lang/String;)V

    .line 2243
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    .line 2244
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p3

    .line 2243
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2245
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementBarredPlmns(ILjava/lang/String;)V

    .line 2248
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->serializeMapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 2249
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementDataPlanForPlmns(ILjava/lang/String;)V

    .line 2251
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->serializeMapListToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 2252
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementPlmnServiceTypeMap(ILjava/lang/String;)V

    .line 2254
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->serializeMapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 2255
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementPlmnDataServicePolicy(ILjava/lang/String;)V

    .line 2257
    invoke-virtual {p0, p7}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->serializeMapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 2258
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementPlmnVoiceServicePolicy(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementPlmnDataServicePolicy(ILjava/lang/String;)V
    .locals 2

    .line 2350
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda218;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda218;-><init>()V

    const-string v1, "satellite_entitlement_data_service_policy"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementPlmnServiceTypeMap(ILjava/lang/String;)V
    .locals 2

    .line 2335
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda231;-><init>()V

    const-string v1, "satellite_entitlement_service_type_map"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementPlmnVoiceServicePolicy(ILjava/lang/String;)V
    .locals 2

    .line 2365
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda224;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda224;-><init>()V

    const-string v1, "satellite_entitlement_voice_service_policy"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementPlmns(ILjava/lang/String;)V
    .locals 2

    .line 2202
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "satellite_entitlement_plmns"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementStatus(II)V
    .locals 2

    .line 2189
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda7;-><init>()V

    .line 2187
    const-string v1, "satellite_entitlement_status"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setServiceCapabilities(II)V
    .locals 2

    .line 2174
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda59;-><init>()V

    .line 2173
    const-string v1, "service_capabilities"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSimSlotIndex(II)V
    .locals 2

    .line 1146
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "sim_id"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setSubscriptionProperty(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 799
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_SET_INTEGER_METHOD_MAP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ", cannot cast "

    const-string v3, "columnName="

    if-eqz v1, :cond_2

    .line 803
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 804
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    .line 805
    :cond_0
    instance-of v1, p3, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 806
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 811
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/util/function/TriConsumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p0, p1, p3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 808
    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to integer."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 812
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_SET_STRING_METHOD_MAP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 814
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/util/function/TriConsumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p0, p1, p3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 815
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->SUBSCRIPTION_SET_BYTE_ARRAY_METHOD_MAP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 819
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 820
    check-cast p3, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    goto :goto_1

    .line 821
    :cond_4
    instance-of v1, p3, [B

    if-eqz v1, :cond_5

    .line 822
    check-cast p3, [B

    .line 827
    :goto_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/util/function/TriConsumer;

    .line 828
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 827
    invoke-interface {p2, p0, p1, p3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 824
    :cond_5
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to byte[]."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 830
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Does not support set "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setSubscriptionType(II)V
    .locals 2

    .line 1812
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "subscription_type"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setTransferStatus(II)V
    .locals 2

    .line 2736
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda41;-><init>()V

    .line 2735
    const-string v1, "transfer_status"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setUiccApplicationsEnabled(II)V
    .locals 2

    .line 1881
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda21;-><init>()V

    .line 1880
    const-string v1, "uicc_applications_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setUiccApplicationsEnabled(IZ)V
    .locals 0

    .line 1868
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setUiccApplicationsEnabled(II)V

    return-void
.end method

.method public blacklist setUsageSetting(II)V
    .locals 2

    .line 2055
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "usage_setting"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setUserId(II)V
    .locals 2

    .line 2082
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "user_handle"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setVideoTelephonyEnabled(II)V
    .locals 2

    .line 1656
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "vt_ims_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setVoImsOptInEnabled(II)V
    .locals 2

    .line 1970
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "voims_opt_in_status"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setWifiCallingEnabled(II)V
    .locals 2

    .line 1670
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "wfc_ims_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setWifiCallingEnabledForRoaming(II)V
    .locals 2

    .line 1714
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda26;-><init>()V

    .line 1713
    const-string v1, "wfc_ims_roaming_enabled"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setWifiCallingMode(II)V
    .locals 2

    .line 1684
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda214;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda214;-><init>()V

    const-string v1, "wfc_ims_mode"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist setWifiCallingModeForRoaming(II)V
    .locals 2

    .line 1699
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda219;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda219;-><init>()V

    .line 1698
    const-string v1, "wfc_ims_roaming_mode"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->writeDatabaseAndCacheHelper(ILjava/lang/String;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public blacklist syncToGroup(I)V
    .locals 3

    .line 2661
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2665
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->GROUP_SHARING_COLUMNS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2668
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionProperty(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 2662
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist updateSubscription(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 3

    .line 1099
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1104
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v0

    .line 1105
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    .line 1106
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1105
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    if-eqz v1, :cond_2

    .line 1111
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->equalsDbItemsOnly(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1118
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 1113
    :cond_1
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->createDeltaContentValues(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->updateDatabase(ILandroid/content/ContentValues;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mAllSubscriptionInfoInternalCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mCallback:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;I)V

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1108
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscription: subscription does not exist. subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1118
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1119
    throw p1
.end method
