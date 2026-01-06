.class public Lcom/samsung/android/server/wifi/connection/Issue;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final ID_AUTH_OK_BUT_ASSOC_NOT_OK:I = 0x6

.field public static final ID_AUTH_OK_BUT_ASSOC_NOT_OK_DETAILED_ETC:I = 0x25c

.field public static final ID_AUTH_OK_BUT_ASSOC_NOT_OK_DETAILED_PUBLIC_WIFI:I = 0x25b

.field public static final ID_AUTH_OK_BUT_ASSOC_NOT_OK_DETAILED_SUCCESSFUL_CONNECTION_TO_THE_DIFF_BSSID:I = 0x25a

.field public static final ID_AUTH_OK_BUT_ASSOC_NOT_OK_DETAILED_SUCCESSFUL_CONNECTION_TO_THE_SAME_BSSID:I = 0x259

.field public static final ID_BEACON_LOSS_DISCONNECTION:I = 0x8

.field public static final ID_BTM:I = 0x1

.field public static final ID_END:I = 0x9

.field public static final ID_GTK:I = 0x3

.field public static final ID_IE_MISMATCH_IN_4WAY_HS:I = 0x4

.field public static final ID_IE_MISMATCH_IN_ASSOC:I = 0x5

.field public static final ID_IMMEDIATE_DISCONNECTION:I = 0x7

.field public static final ID_KEEP_ALIVE:I = 0x2

.field public static final ID_KEEP_ALIVE_DETAILED_DISCONNECTED_AGAIN_TO_THE_SAME_SSID:I = 0xca

.field public static final ID_KEEP_ALIVE_DETAILED_ETC:I = 0xcb

.field public static final ID_KEEP_ALIVE_DETAILED_SUCCESSFUL_CONNECTION_TO_THE_SAME_SSID:I = 0xc9

.field public static final ID_NONE:I = 0x0

.field public static final INVALID_RSSI:I = -0x7f

.field public static final NONE:Lcom/samsung/android/server/wifi/connection/Issue;


# instance fields
.field public bssid:Ljava/lang/String;

.field public detectedDate:Ljava/util/Date;

.field public id:I

.field public oui:Ljava/lang/String;

.field public routerName:Ljava/lang/String;

.field public rssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/connection/Issue;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/server/wifi/connection/Issue;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->oui:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->bssid:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->routerName:Ljava/lang/String;

    const/16 v0, -0x7f

    .line 33
    iput v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    .line 34
    iput p1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 35
    iget-object p1, p2, Lcom/samsung/android/server/wifi/connection/Issue;->oui:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->oui:Ljava/lang/String;

    .line 36
    iget-object p1, p2, Lcom/samsung/android/server/wifi/connection/Issue;->routerName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->routerName:Ljava/lang/String;

    .line 37
    iget-object p1, p2, Lcom/samsung/android/server/wifi/connection/Issue;->detectedDate:Ljava/util/Date;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->detectedDate:Ljava/util/Date;

    .line 38
    iget p1, p2, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    iput p1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->bssid:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->routerName:Ljava/lang/String;

    const/16 v0, -0x7f

    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    .line 5
    iput p1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/connection/Issue;->oui:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->bssid:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->routerName:Ljava/lang/String;

    const/16 v0, -0x7f

    .line 17
    iput v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    .line 18
    iput p1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 19
    iput-object p2, p0, Lcom/samsung/android/server/wifi/connection/Issue;->oui:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wifi/connection/Issue;->adjustRssi(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->bssid:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->routerName:Ljava/lang/String;

    const/16 v0, -0x7f

    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    .line 25
    iput p1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 26
    iput-object p2, p0, Lcom/samsung/android/server/wifi/connection/Issue;->oui:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wifi/connection/Issue;->adjustRssi(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    .line 28
    iput-object p4, p0, Lcom/samsung/android/server/wifi/connection/Issue;->bssid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Date;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->bssid:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->routerName:Ljava/lang/String;

    const/16 v0, -0x7f

    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    .line 11
    iput p1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 12
    iput-object p2, p0, Lcom/samsung/android/server/wifi/connection/Issue;->oui:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/samsung/android/server/wifi/connection/Issue;->detectedDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public adjustRssi(I)I
    .locals 0

    .line 1
    const/16 p0, -0x2d

    .line 2
    .line 3
    if-le p1, p0, :cond_0

    .line 4
    .line 5
    const/16 p0, -0x28

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/16 p0, -0x37

    .line 9
    .line 10
    if-le p1, p0, :cond_1

    .line 11
    .line 12
    const/16 p0, -0x32

    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    const/16 p0, -0x41

    .line 16
    .line 17
    if-le p1, p0, :cond_2

    .line 18
    .line 19
    const/16 p0, -0x3c

    .line 20
    .line 21
    return p0

    .line 22
    :cond_2
    const/16 p0, -0x4b

    .line 23
    .line 24
    if-le p1, p0, :cond_3

    .line 25
    .line 26
    const/16 p0, -0x46

    .line 27
    .line 28
    return p0

    .line 29
    :cond_3
    const/16 p0, -0x7f

    .line 30
    .line 31
    if-le p1, p0, :cond_4

    .line 32
    .line 33
    const/16 p0, -0x50

    .line 34
    .line 35
    :cond_4
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Lcom/samsung/android/server/wifi/connection/Issue;

    .line 20
    .line 21
    iget v2, p0, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 22
    .line 23
    iget v3, p1, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/Issue;->oui:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/samsung/android/server/wifi/connection/Issue;->oui:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/Issue;->routerName:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v3, p1, Lcom/samsung/android/server/wifi/connection/Issue;->routerName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iget p0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    .line 48
    .line 49
    iget p1, p1, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    .line 50
    .line 51
    if-ne p0, p1, :cond_2

    .line 52
    .line 53
    return v0

    .line 54
    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->oui:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->routerName:Ljava/lang/String;

    .line 10
    .line 11
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public isNone()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/connection/Issue;->NONE:Lcom/samsung/android/server/wifi/connection/Issue;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Issue ID: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->id:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", OUI: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->oui:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", Router Name: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->routerName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", Adjusted RSSI: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/android/server/wifi/connection/Issue;->rssi:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", Detect Date: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/Issue;->detectedDate:Ljava/util/Date;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
