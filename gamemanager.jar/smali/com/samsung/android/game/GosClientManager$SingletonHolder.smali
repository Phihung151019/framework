.class Lcom/samsung/android/game/GosClientManager$SingletonHolder;
.super Ljava/lang/Object;
.source "GosClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GosClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/game/GosClientManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/samsung/android/game/GosClientManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/game/GosClientManager$SingletonHolder;->INSTANCE:Lcom/samsung/android/game/GosClientManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 156
    new-instance v0, Lcom/samsung/android/game/GosClientManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/game/GosClientManager;-><init>(Lcom/samsung/android/game/GosClientManager-IA;)V

    sput-object v0, Lcom/samsung/android/game/GosClientManager$SingletonHolder;->INSTANCE:Lcom/samsung/android/game/GosClientManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
