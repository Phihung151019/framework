.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

.field public final synthetic f$1:[Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;[Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda16;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda16;->f$1:[Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda16;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda16;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda16;->f$1:[Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda16;->f$2:I

    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->$r8$lambda$t9VHivMHzTKzlu5BjT0j04v9Pbw(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;[Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
