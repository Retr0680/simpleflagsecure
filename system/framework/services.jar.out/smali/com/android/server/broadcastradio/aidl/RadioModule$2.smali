.class Lcom/android/server/broadcastradio/aidl/RadioModule$2;
.super Landroid/hardware/broadcastradio/IAnnouncementListener$Stub;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/broadcastradio/aidl/RadioModule;->addAnnouncementListener(Landroid/hardware/radio/IAnnouncementListener;[I)Landroid/hardware/radio/ICloseHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/hardware/radio/IAnnouncementListener;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/aidl/RadioModule;Landroid/hardware/radio/IAnnouncementListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/broadcastradio/aidl/RadioModule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 484
    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$2;->val$listener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/IAnnouncementListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 490
    const-string v0, "be432e9a5bdd211bdac48d6d03607fa71436f75c"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 486
    const/4 v0, 0x3

    return v0
.end method

.method public onListUpdated([Landroid/hardware/broadcastradio/Announcement;)V
    .locals 3
    .param p1, "hwAnnouncements"    # [Landroid/hardware/broadcastradio/Announcement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 497
    .local v0, "announcements":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/Announcement;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 498
    aget-object v2, p1, v1

    .line 499
    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->announcementFromHalAnnouncement(Landroid/hardware/broadcastradio/Announcement;)Landroid/hardware/radio/Announcement;

    move-result-object v2

    .line 498
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 501
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$2;->val$listener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {v1, v0}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V

    .line 502
    return-void
.end method
