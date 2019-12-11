as yet unclassified
applicationId: anInteger
	"   Application-ID

      Application-ID is four octets and is used to identify for which
      application the message is applicable.  The application can be an
      authentication application, an accounting application, or a
      vendor-specific application.

      The value of the Application-ID field in the header MUST be the
      same as any relevant Application-Id AVPs contained in the message."

	applicationId := anInteger