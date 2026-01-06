.class Lcom/android/ims/internal/ConferenceParticipant$1;
.super Ljava/lang/Object;
.source "ConferenceParticipant.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ConferenceParticipant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/internal/ConferenceParticipant;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/ConferenceParticipant;
    .locals 12
    .param p1, "source"    # Landroid/os/Parcel;

    .line 126
    const-class v0, Lcom/android/ims/internal/ConferenceParticipant;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 127
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 128
    .local v2, "extra":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/Uri;

    .line 129
    .local v3, "handle":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "displayName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/net/Uri;

    .line 131
    .local v5, "endpoint":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 132
    .local v6, "state":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 133
    .local v8, "connectTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 134
    .local v10, "elapsedRealTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 135
    .local v7, "callDirection":I
    new-instance v1, Lcom/android/ims/internal/ConferenceParticipant;

    invoke-direct/range {v1 .. v7}, Lcom/android/ims/internal/ConferenceParticipant;-><init>(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 138
    .local v1, "participant":Lcom/android/ims/internal/ConferenceParticipant;
    invoke-virtual {v1, v8, v9}, Lcom/android/ims/internal/ConferenceParticipant;->setConnectTime(J)V

    .line 139
    invoke-virtual {v1, v10, v11}, Lcom/android/ims/internal/ConferenceParticipant;->setConnectElapsedTime(J)V

    .line 140
    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/ConferenceParticipant$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/ConferenceParticipant;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/ims/internal/ConferenceParticipant;
    .locals 1
    .param p1, "size"    # I

    .line 145
    new-array v0, p1, [Lcom/android/ims/internal/ConferenceParticipant;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/ConferenceParticipant$1;->newArray(I)[Lcom/android/ims/internal/ConferenceParticipant;

    move-result-object p1

    return-object p1
.end method
